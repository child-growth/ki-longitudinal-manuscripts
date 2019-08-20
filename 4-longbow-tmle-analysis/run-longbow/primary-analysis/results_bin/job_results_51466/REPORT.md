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

**Intervention Variable:** exclfeed6

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

agecat        studyid                    country                        exclfeed6    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       54     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      171     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        9     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       17     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      193     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2     212
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        6     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      209     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       19     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       15     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      217     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       11     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      258     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      246     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      247     248
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    11817   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      606   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2960   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      292   15675
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3370    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      260    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      899    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      103    4632
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       57     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        1     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      174     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        6     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       17     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      194     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        1     212
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        6     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      209     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       18     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       15     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      215     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        4     234
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       11     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      259     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      244     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      247     248
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0        5      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       39      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        2      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       54     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      171     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        9     238
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       17     212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      193     212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2     212
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        6     234
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     234
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      209     234
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       19     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       15     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      217     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       11     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      258     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      246     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      247     248
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    11817   15675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      606   15675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2960   15675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      292   15675
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3370    4632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      260    4632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      899    4632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      103    4632


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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







# Results Detail

## Results Plots
![](/tmp/60c558a1-6e2c-4bf4-940c-1c1cc6d35069/f935a184-f545-40f8-ab7e-d2a9733913b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/60c558a1-6e2c-4bf4-940c-1c1cc6d35069/f935a184-f545-40f8-ab7e-d2a9733913b6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/60c558a1-6e2c-4bf4-940c-1c1cc6d35069/f935a184-f545-40f8-ab7e-d2a9733913b6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/60c558a1-6e2c-4bf4-940c-1c1cc6d35069/f935a184-f545-40f8-ab7e-d2a9733913b6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0590271   0.0281031   0.0899511
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0930467   0.0477426   0.1383509
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0342248   0.0211277   0.0473218
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0605965   0.0479776   0.0732154
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1419019   0.1082564   0.1755475
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1585798   0.0982130   0.2189466
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0511053   0.0467589   0.0554517
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0807409   0.0709516   0.0905302
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0736171   0.0632818   0.0839523
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0925626   0.0739764   0.1111488
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0523217   0.0225453   0.0820980
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1013948   0.0545978   0.1481918
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0176800   0.0073142   0.0280458
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0281701   0.0191950   0.0371452
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1049087   0.0744992   0.1353182
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1551688   0.0942569   0.2160807
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0581758   0.0276169   0.0887348
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0941274   0.0488478   0.1394069
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0340082   0.0209482   0.0470683
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0604907   0.0478715   0.0731098
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1420342   0.1083975   0.1756709
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1581400   0.0980416   0.2182384
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0508976   0.0465584   0.0552367
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0808855   0.0710437   0.0907272
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0734828   0.0631400   0.0838257
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0930020   0.0736529   0.1123512


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0514151   0.0420121   0.0608181
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1464286   0.1171213   0.1757358
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0572887   0.0532017   0.0613756
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0783679   0.0692461   0.0874896
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0250261   0.0180336   0.0320185
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1181989   0.0907652   0.1456326
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0514151   0.0420121   0.0608181
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1464286   0.1171213   0.1757358
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0572887   0.0532017   0.0613756
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0783679   0.0692461   0.0874896


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.576340   0.7700635   3.226809
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.770547   1.1450856   2.737643
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.117531   0.7134321   1.750518
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.579894   1.3677507   1.824941
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.257353   0.9878546   1.600373
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.937912   0.9290837   4.042159
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.593331   0.8173173   3.106144
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.479084   0.9076553   2.410265
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.617980   0.7914404   3.307717
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.778706   1.1488926   2.753778
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.113393   0.7113999   1.742543
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.589181   1.3773539   1.833585
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.265630   0.9880541   1.621185


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0152435   -0.0080051   0.0384921
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0171903    0.0053196   0.0290611
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0045266   -0.0132785   0.0223317
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0061834    0.0038653   0.0085016
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0047508   -0.0000145   0.0095161
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0214488   -0.0026811   0.0455788
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0073461   -0.0019868   0.0166790
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0132902   -0.0046825   0.0312628
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0160947   -0.0069648   0.0391542
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0174069    0.0055664   0.0292473
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0043943   -0.0133813   0.0221700
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0063911    0.0041020   0.0086801
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0048851    0.0001099   0.0096602


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.2052427   -0.1657248   0.4581575
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.3343440    0.0694278   0.5238436
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0309136   -0.0985233   0.1450992
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1079343    0.0671303   0.1469535
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0606217   -0.0027093   0.1199528
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2907506   -0.0978059   0.5417818
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.2935375   -0.1824792   0.5779298
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1124391   -0.0513257   0.2506942
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.2167040   -0.1502534   0.4665935
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.3385554    0.0742870   0.5273817
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0300102   -0.0991920   0.1440255
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1115593    0.0712512   0.1501180
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0623349   -0.0011656   0.1218078
