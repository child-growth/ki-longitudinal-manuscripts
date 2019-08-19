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

**Intervention Variable:** exclfeed36

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

agecat      studyid                    country                        exclfeed36    swasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       58     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      164     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        8     230
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       12     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      165     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        0     177
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        5     195
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     195
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      183     195
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        7     195
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       11     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      152     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        4     167
Birth       ki0047075b-MAL-ED          PERU                           1                   0       15     266
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0     266
Birth       ki0047075b-MAL-ED          PERU                           0                   0      251     266
Birth       ki0047075b-MAL-ED          PERU                           0                   1        0     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      233     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      114     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        1     116
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       3
Birth       ki1000108-IRC              INDIA                          1                   0        0       3
Birth       ki1000108-IRC              INDIA                          1                   1        0       3
Birth       ki1000108-IRC              INDIA                          0                   0        3       3
Birth       ki1000108-IRC              INDIA                          0                   1        0       3
Birth       ki1000109-EE               PAKISTAN                       1                   0        0       1
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       1
Birth       ki1000109-EE               PAKISTAN                       0                   0        1       1
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       1
Birth       ki1101329-Keneba           GAMBIA                         1                   0      342    1202
Birth       ki1101329-Keneba           GAMBIA                         1                   1        3    1202
Birth       ki1101329-Keneba           GAMBIA                         0                   0      849    1202
Birth       ki1101329-Keneba           GAMBIA                         0                   1        8    1202
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9014   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1      161   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2107   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1       37   11319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      486     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1        5     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      111     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1        0     602
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       63     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      175     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        2     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      192     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        7     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      224     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        5     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       15     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      221     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1                   0       16     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                   0      255     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      251     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      246     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        9       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
6 months    ki1000108-IRC              INDIA                          1                   0        0       4
6 months    ki1000108-IRC              INDIA                          1                   1        0       4
6 months    ki1000108-IRC              INDIA                          0                   0        4       4
6 months    ki1000108-IRC              INDIA                          0                   1        0       4
6 months    ki1000109-EE               PAKISTAN                       1                   0      222     371
6 months    ki1000109-EE               PAKISTAN                       1                   1        2     371
6 months    ki1000109-EE               PAKISTAN                       0                   0      140     371
6 months    ki1000109-EE               PAKISTAN                       0                   1        7     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      156     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       12     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      140     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        0     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      437     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        5     582
6 months    ki1101329-Keneba           GAMBIA                         1                   0      498    1790
6 months    ki1101329-Keneba           GAMBIA                         1                   1        9    1790
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1261    1790
6 months    ki1101329-Keneba           GAMBIA                         0                   1       22    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      417     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1        6     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      103     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        0     526
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    10525   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      129   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2644   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1       55   13353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3223    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       19    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      920    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       10    4172
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       58     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      153     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        0     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      152     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        6     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      219     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1        2     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      214     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1                   0       12     200
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     200
24 months   ki0047075b-MAL-ED          PERU                           0                   0      187     200
24 months   ki0047075b-MAL-ED          PERU                           0                   1        1     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      238     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      213     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
24 months   ki1000108-IRC              INDIA                          1                   0        0       4
24 months   ki1000108-IRC              INDIA                          1                   1        0       4
24 months   ki1000108-IRC              INDIA                          0                   0        4       4
24 months   ki1000108-IRC              INDIA                          0                   1        0       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      146     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      421     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        7     576
24 months   ki1101329-Keneba           GAMBIA                         1                   0      418    1395
24 months   ki1101329-Keneba           GAMBIA                         1                   1        6    1395
24 months   ki1101329-Keneba           GAMBIA                         0                   0      950    1395
24 months   ki1101329-Keneba           GAMBIA                         0                   1       21    1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      361     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1        7     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       80     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1        7     455
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       34     184
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        0     184
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      150     184
24 months   ki1148112-LCNI-5           MALAWI                         0                   1        0     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5060    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      206    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1338    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1       68    6672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3050    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       77    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      857    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       25    4009


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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/7bad3a93-4806-41c6-899a-418aefcd8870/cba74a2e-a9d5-4e79-b564-d72d099d187b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7bad3a93-4806-41c6-899a-418aefcd8870/cba74a2e-a9d5-4e79-b564-d72d099d187b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7bad3a93-4806-41c6-899a-418aefcd8870/cba74a2e-a9d5-4e79-b564-d72d099d187b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7bad3a93-4806-41c6-899a-418aefcd8870/cba74a2e-a9d5-4e79-b564-d72d099d187b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0175671   0.0141161   0.0210181
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0170996   0.0114155   0.0227837
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0177515   0.0062542   0.0292487
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0171473   0.0100418   0.0242529
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0120544   0.0098217   0.0142871
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0199057   0.0136259   0.0261855
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0060547   0.0005016   0.0116078
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0106706   0.0052531   0.0160881
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0141509   0.0029044   0.0253975
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0216272   0.0124745   0.0307798
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0190217   0.0050498   0.0329937
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0804598   0.0232407   0.1376789
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0393466   0.0332016   0.0454915
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0466223   0.0342979   0.0589468
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0252599   0.0187301   0.0317896
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0265700   0.0160243   0.0371157


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0174927   0.0144504   0.0205350
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0173184   0.0112733   0.0233635
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0137797   0.0115120   0.0160474
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0069511   0.0026049   0.0112973
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0193548   0.0121227   0.0265870
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0307692   0.0148841   0.0466544
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0410671   0.0355641   0.0465702
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0254428   0.0199234   0.0309621


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9733907   0.6672187    1.420058
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.9659652   0.4477489    2.083955
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6513223   1.1622015    2.346293
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7623673   0.6160763    5.041483
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.5283213   0.6211156    3.760598
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 4.2298850   1.5216473   11.758261
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1849157   0.8707169    1.612493
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0518659   0.6515686    1.698090


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000744   -0.0013041   0.0011554
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0004330   -0.0101206   0.0092545
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017253    0.0004015   0.0030491
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008964   -0.0009498   0.0027426
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0052039   -0.0048907   0.0152985
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0117475    0.0002681   0.0232269
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017206   -0.0011910   0.0046322
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0001829   -0.0027544   0.0031202


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0042511   -0.0769543   0.0635442
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0250048   -0.7689132   0.4060563
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1252052    0.0286144   0.2121914
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1289581   -0.2519194   0.3939595
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.2688679   -0.4728780   0.6370683
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.3817935   -0.0359673   0.6310894
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0418971   -0.0317402   0.1102789
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0071886   -0.1154422   0.1163374
