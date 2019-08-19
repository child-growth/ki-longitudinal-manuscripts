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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** predexfd6

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

agecat        studyid                    country                        predexfd6    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      117     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        8     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      108     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       35     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      175     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     212
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       19     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      196     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       19     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       29     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      203     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0      113     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      156     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        0     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      243     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       19      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      19
0-24 months   ki1000108-IRC              INDIA                          1                    0        0      14
0-24 months   ki1000108-IRC              INDIA                          1                    1        0      14
0-24 months   ki1000108-IRC              INDIA                          0                    0       12      14
0-24 months   ki1000108-IRC              INDIA                          0                    1        2      14
0-24 months   ki1000109-EE               PAKISTAN                       1                    0      208     377
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       13     377
0-24 months   ki1000109-EE               PAKISTAN                       0                    0      141     377
0-24 months   ki1000109-EE               PAKISTAN                       0                    1       15     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      355     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       40     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       16     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        2     413
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      136     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       30     166
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      164     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        2     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      461     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       13     640
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      715    2120
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       25    2120
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0     1296    2120
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1       84    2120
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      357     560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       59     560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121     560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23     560
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3     240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    11837   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      608   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2940   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      290   15675
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3383    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      261    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      886    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      102    4632
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      122     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      109     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        4     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       35     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      176     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     212
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       18     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        1     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      197     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       17     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       29     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      201     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        4     234
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0      114     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      156     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      241     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       15      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        4      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      19
0-6 months    ki1000108-IRC              INDIA                          1                    0        0      14
0-6 months    ki1000108-IRC              INDIA                          1                    1        0      14
0-6 months    ki1000108-IRC              INDIA                          0                    0       11      14
0-6 months    ki1000108-IRC              INDIA                          0                    1        3      14
0-6 months    ki1000109-EE               PAKISTAN                       1                    0      199     366
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       11     366
0-6 months    ki1000109-EE               PAKISTAN                       0                    0      140     366
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       16     366
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      164     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      459     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       13     637
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      614    1918
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       11    1918
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0     1256    1918
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1       37    1918
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      353     533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       41     533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      117     533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       22     533
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0        7      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       37      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        2      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      117     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        8     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      108     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     238
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       35     212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      175     212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     212
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       19     234
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     234
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      196     234
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       19     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       29     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      203     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0      113     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      156     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      243     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     248
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       19      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      19
6-24 months   ki1000108-IRC              INDIA                          1                    0        0      14
6-24 months   ki1000108-IRC              INDIA                          1                    1        0      14
6-24 months   ki1000108-IRC              INDIA                          0                    0       12      14
6-24 months   ki1000108-IRC              INDIA                          0                    1        2      14
6-24 months   ki1000109-EE               PAKISTAN                       1                    0      208     377
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       13     377
6-24 months   ki1000109-EE               PAKISTAN                       0                    0      141     377
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       15     377
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      355     413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       40     413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       16     413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        2     413
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      136     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       30     166
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      164     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        2     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      461     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       13     640
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0      715    2120
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       25    2120
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0     1296    2120
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1       84    2120
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      357     560
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       59     560
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121     560
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23     560
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42     240
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0     240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195     240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3     240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    11837   15675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      608   15675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2940   15675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      290   15675
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3383    4632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      261    4632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      886    4632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      102    4632


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/a21e7f08-e1fa-4c11-87fb-9faf78a697e8/c5559893-5e4f-4ce9-a0d7-f543705fa2c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a21e7f08-e1fa-4c11-87fb-9faf78a697e8/c5559893-5e4f-4ce9-a0d7-f543705fa2c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a21e7f08-e1fa-4c11-87fb-9faf78a697e8/c5559893-5e4f-4ce9-a0d7-f543705fa2c5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a21e7f08-e1fa-4c11-87fb-9faf78a697e8/c5559893-5e4f-4ce9-a0d7-f543705fa2c5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0640000   0.0210033   0.1069967
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0442478   0.0062515   0.0822441
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0573906   0.0269352   0.0878460
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0936728   0.0488064   0.1385391
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0338820   0.0208413   0.0469227
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0607086   0.0480870   0.0733302
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1412038   0.1077135   0.1746941
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1614946   0.1006455   0.2223437
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0511904   0.0468545   0.0555264
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0796831   0.0698608   0.0895055
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0734139   0.0631473   0.0836805
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0941056   0.0746186   0.1135926
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0522909   0.0224290   0.0821527
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1020523   0.0548025   0.1493021
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0177632   0.0073407   0.0281857
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0284310   0.0193840   0.0374780
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1038977   0.0736675   0.1341280
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1589230   0.0971759   0.2206701
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0640000   0.0210033   0.1069967
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0442478   0.0062515   0.0822441
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0572177   0.0269727   0.0874626
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0935643   0.0478447   0.1392839
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0341284   0.0211435   0.0471133
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0609503   0.0483180   0.0735827
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1421111   0.1084192   0.1758031
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1595059   0.0992778   0.2197341
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0512832   0.0469290   0.0556374
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0812678   0.0713250   0.0912105
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0733972   0.0631143   0.0836800
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0951998   0.0757568   0.1146428


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0546218   0.0256911   0.0835526
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0514151   0.0420121   0.0608181
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1464286   0.1171213   0.1757358
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0572887   0.0532017   0.0613756
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0783679   0.0692461   0.0874896
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0250261   0.0180336   0.0320185
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1181989   0.0907652   0.1456326
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0546218   0.0256911   0.0835526
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0514151   0.0420121   0.0608181
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1464286   0.1171213   0.1757358
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0572887   0.0532017   0.0613756
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0783679   0.0692461   0.0874896


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6913717   0.2323821   2.056934
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.6321969   0.7966256   3.344189
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.7917637   1.1567973   2.775263
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1436985   0.7325586   1.785586
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5566021   1.3456744   1.800592
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2818491   1.0015464   1.640600
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.9516278   0.9339458   4.078236
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.6005573   0.8209332   3.120575
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.5296101   0.9409505   2.486536
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6913717   0.2323821   2.056934
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.6352347   0.7949465   3.363739
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.7859122   1.1578306   2.754706
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1224028   0.7183543   1.753714
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5846849   1.3710143   1.831656
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2970501   1.0159374   1.655947


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0093782   -0.0366504   0.0178941
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0168800   -0.0061459   0.0399058
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0175331    0.0057028   0.0293634
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0052248   -0.0124480   0.0228975
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0060982    0.0038089   0.0083875
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0049540    0.0002674   0.0096405
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0214796   -0.0026462   0.0456054
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0072629   -0.0021043   0.0166300
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0143012   -0.0035694   0.0321717
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0093782   -0.0366504   0.0178941
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0170529   -0.0059251   0.0400308
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0172867    0.0055010   0.0290724
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0043175   -0.0134789   0.0221138
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0060054    0.0037074   0.0083035
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0049707    0.0002743   0.0096671


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1716923   -0.7832238   0.2301231
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.2272766   -0.1395911   0.4760388
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.3410104    0.0769559   0.5295270
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0356813   -0.0927404   0.1490105
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1064475    0.0661634   0.1449939
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0632142    0.0009604   0.1215887
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.2911683   -0.0980589   0.5424268
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.2902126   -0.1880967   0.5759620
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1209923   -0.0416869   0.2582660
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1716923   -0.7832238   0.2301231
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.2296049   -0.1354414   0.4772882
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.3362183    0.0739269   0.5242209
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0294851   -0.0998914   0.1436434
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1048277    0.0643359   0.1435673
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0634276    0.0010149   0.1219411
