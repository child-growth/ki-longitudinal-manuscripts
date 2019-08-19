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

agecat        studyid                    country                        exclfeed36    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       61     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        3     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      173     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       10     247
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       18     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      197     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        2     217
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        7     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     241
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      213     241
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       21     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       15     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      219     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        4     238
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       16     282
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0     282
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0      265     282
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1        1     282
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      271     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        1     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      252     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        9       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        0       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0       9
0-24 months   ki1000108-IRC              INDIA                          1                     0        0       4
0-24 months   ki1000108-IRC              INDIA                          1                     1        0       4
0-24 months   ki1000108-IRC              INDIA                          0                     0        3       4
0-24 months   ki1000108-IRC              INDIA                          0                     1        1       4
0-24 months   ki1000109-EE               PAKISTAN                       1                     0      210     372
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       15     372
0-24 months   ki1000109-EE               PAKISTAN                       0                     0      134     372
0-24 months   ki1000109-EE               PAKISTAN                       0                     1       13     372
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      136     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       30     166
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      168     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1        2     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0      455     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       13     638
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0      574    1927
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1       19    1927
0-24 months   ki1101329-Keneba           GAMBIA                         0                     0     1255    1927
0-24 months   ki1101329-Keneba           GAMBIA                         0                     1       79    1927
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      366     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       59     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       88     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       15     528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3     240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     9800   12813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      482   12813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     2293   12813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      238   12813
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3234    4470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      250    4470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      884    4470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      102    4470
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       63     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        1     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0      177     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        6     247
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       18     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0      198     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        1     217
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0        7     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        0     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0      214     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       15     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0      217     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1        5     237
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       16     282
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        0     282
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0      266     282
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        0     282
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      269     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        1     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      252     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        8       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        1       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0       9
0-6 months    ki1000108-IRC              INDIA                          1                     0        0       4
0-6 months    ki1000108-IRC              INDIA                          1                     1        0       4
0-6 months    ki1000108-IRC              INDIA                          0                     0        4       4
0-6 months    ki1000108-IRC              INDIA                          0                     1        0       4
0-6 months    ki1000109-EE               PAKISTAN                       1                     0      207     366
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       12     366
0-6 months    ki1000109-EE               PAKISTAN                       0                     0      132     366
0-6 months    ki1000109-EE               PAKISTAN                       0                     1       15     366
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      168     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1        1     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     0      454     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     1       13     636
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      525    1786
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       10    1786
0-6 months    ki1101329-Keneba           GAMBIA                         0                     0     1216    1786
0-6 months    ki1101329-Keneba           GAMBIA                         0                     1       35    1786
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0      364     509
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       44     509
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0       85     509
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1       16     509
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0        5      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0       39      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        2      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       61     247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        3     247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      173     247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       10     247
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       18     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      197     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        2     217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        7     241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     241
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      213     241
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       21     241
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       15     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      219     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        4     238
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0       16     282
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0     282
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0      265     282
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1        1     282
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      271     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        1     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      252     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        9       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        0       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0       9
6-24 months   ki1000108-IRC              INDIA                          1                     0        0       4
6-24 months   ki1000108-IRC              INDIA                          1                     1        0       4
6-24 months   ki1000108-IRC              INDIA                          0                     0        3       4
6-24 months   ki1000108-IRC              INDIA                          0                     1        1       4
6-24 months   ki1000109-EE               PAKISTAN                       1                     0      210     372
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       15     372
6-24 months   ki1000109-EE               PAKISTAN                       0                     0      134     372
6-24 months   ki1000109-EE               PAKISTAN                       0                     1       13     372
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      136     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       30     166
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      168     638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1        2     638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0      455     638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       13     638
6-24 months   ki1101329-Keneba           GAMBIA                         1                     0      574    1927
6-24 months   ki1101329-Keneba           GAMBIA                         1                     1       19    1927
6-24 months   ki1101329-Keneba           GAMBIA                         0                     0     1255    1927
6-24 months   ki1101329-Keneba           GAMBIA                         0                     1       79    1927
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      366     528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       59     528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       88     528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       15     528
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42     240
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195     240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3     240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     9800   12813
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      482   12813
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     2293   12813
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      238   12813
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3234    4470
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      250    4470
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      884    4470
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      102    4470


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
![](/tmp/a24c7023-c483-4a14-98b7-8a0b58a03d40/9e967c60-74e6-431e-8dad-758a236c4866/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a24c7023-c483-4a14-98b7-8a0b58a03d40/9e967c60-74e6-431e-8dad-758a236c4866/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a24c7023-c483-4a14-98b7-8a0b58a03d40/9e967c60-74e6-431e-8dad-758a236c4866/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a24c7023-c483-4a14-98b7-8a0b58a03d40/9e967c60-74e6-431e-8dad-758a236c4866/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0659000   0.0336885   0.0981114
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0888840   0.0434454   0.1343225
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0317905   0.0175579   0.0460230
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0588537   0.0461815   0.0715260
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1389980   0.1060678   0.1719281
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1453721   0.0770520   0.2136921
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0485398   0.0438561   0.0532236
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0859951   0.0745565   0.0974336
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0738887   0.0635030   0.0842745
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0928101   0.0736834   0.1119367
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0539747   0.0237275   0.0842218
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1016749   0.0521166   0.1512333
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0188479   0.0072708   0.0304250
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0275727   0.0185325   0.0366128
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1080119   0.0778487   0.1381750
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1586307   0.0863840   0.2308773
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0674594   0.0348504   0.1000683
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0866690   0.0411694   0.1321686
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0320996   0.0178944   0.0463048
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0590657   0.0463997   0.0717318
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1377905   0.1048160   0.1707650
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1272182   0.0581132   0.1963233
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0483960   0.0437073   0.0530847
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0860518   0.0745819   0.0975218
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0736691   0.0632611   0.0840771
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0923293   0.0735708   0.1110879


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0752688   0.0484230   0.1021146
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0508563   0.0410442   0.0606683
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1401515   0.1105133   0.1697898
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0561929   0.0517926   0.0605933
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0787472   0.0695071   0.0879873
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0251960   0.0179257   0.0324663
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1178782   0.0898370   0.1459194
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0752688   0.0484230   0.1021146
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0508563   0.0410442   0.0606683
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1401515   0.1105133   0.1697898
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0561929   0.0517926   0.0605933
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0787472   0.0695071   0.0879873


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.3487711   0.6637790   2.740646
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.8513021   1.1261372   3.043430
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0458573   0.6177893   1.770535
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.7716394   1.5086586   2.080462
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2560788   0.9835225   1.604167
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.8837530   0.8955379   3.962451
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.4629020   0.7288869   2.936097
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4686413   0.8606222   2.506219
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.2847592   0.6290359   2.624025
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.8400796   1.1253216   3.008822
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9232728   0.5091057   1.674373
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.7780765   1.5126030   2.090143
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2532977   0.9832666   1.597487


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0093689   -0.0128188   0.0315565
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0190658    0.0058401   0.0322914
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0011535   -0.0136411   0.0159482
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0076531    0.0051389   0.0101673
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0048585    0.0000492   0.0096677
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0197958   -0.0035300   0.0431217
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0063481   -0.0040257   0.0167218
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0098663   -0.0056024   0.0253351
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0078095   -0.0145314   0.0301503
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0187567    0.0055639   0.0319495
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0023610   -0.0126109   0.0173329
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0077969    0.0052726   0.0103213
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0050781    0.0002375   0.0099187


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1244719   -0.2215133   0.3724592
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.3748957    0.0662790   0.5815074
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0082306   -0.1031415   0.1083586
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1361935    0.0908389   0.1792856
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0616970   -0.0018076   0.1211760
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2683436   -0.1083055   0.5169913
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.2519471   -0.2860666   0.5648879
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0836993   -0.0560609   0.2049636
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1037543   -0.2445947   0.3546041
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.3688179    0.0618147   0.5753602
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0168460   -0.0959985   0.1180721
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1387526    0.0931888   0.1820271
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0644860    0.0004990   0.1243766
