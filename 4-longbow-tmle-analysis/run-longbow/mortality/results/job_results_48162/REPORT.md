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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_swasted06_noBW

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* impfloor
* earlybf
* hfoodsec
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_impfloor
* delta_earlybf
* delta_hfoodsec
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted06_noBW    dead624   n_cell       n
--------------------------  -----------------------------  --------------------  --------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                            0      231     238
ki0047075b-MAL-ED           BANGLADESH                     0                            1        0     238
ki0047075b-MAL-ED           BANGLADESH                     1                            0        7     238
ki0047075b-MAL-ED           BANGLADESH                     1                            1        0     238
ki0047075b-MAL-ED           INDIA                          0                            0      225     230
ki0047075b-MAL-ED           INDIA                          0                            1        0     230
ki0047075b-MAL-ED           INDIA                          1                            0        5     230
ki0047075b-MAL-ED           INDIA                          1                            1        0     230
ki0047075b-MAL-ED           PERU                           0                            0      268     270
ki0047075b-MAL-ED           PERU                           0                            1        1     270
ki0047075b-MAL-ED           PERU                           1                            0        1     270
ki0047075b-MAL-ED           PERU                           1                            1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            0      255     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            1        0     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            0        3     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      243     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0        2     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        0     245
ki1000304-VITAMIN-A         INDIA                          0                            0     2342    2355
ki1000304-VITAMIN-A         INDIA                          0                            1       11    2355
ki1000304-VITAMIN-A         INDIA                          1                            0        2    2355
ki1000304-VITAMIN-A         INDIA                          1                            1        0    2355
ki1000304b-SAS-CompFeed     INDIA                          0                            0     1307    1357
ki1000304b-SAS-CompFeed     INDIA                          0                            1        8    1357
ki1000304b-SAS-CompFeed     INDIA                          1                            0       39    1357
ki1000304b-SAS-CompFeed     INDIA                          1                            1        3    1357
ki1000304b-SAS-FoodSuppl    INDIA                          0                            0      327     328
ki1000304b-SAS-FoodSuppl    INDIA                          0                            1        1     328
ki1000304b-SAS-FoodSuppl    INDIA                          1                            0        0     328
ki1000304b-SAS-FoodSuppl    INDIA                          1                            1        0     328
ki1017093b-PROVIDE          BANGLADESH                     0                            0      602     605
ki1017093b-PROVIDE          BANGLADESH                     0                            1        0     605
ki1017093b-PROVIDE          BANGLADESH                     1                            0        3     605
ki1017093b-PROVIDE          BANGLADESH                     1                            1        0     605
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     1964    2000
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2000
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0       36    2000
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2000
ki1101329-Keneba            GAMBIA                         0                            0     2092    2207
ki1101329-Keneba            GAMBIA                         0                            1       28    2207
ki1101329-Keneba            GAMBIA                         1                            0       85    2207
ki1101329-Keneba            GAMBIA                         1                            1        2    2207
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            0       39      39
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            1        0      39
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            0        0      39
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            1        0      39
ki1113344-GMS-Nepal         NEPAL                          0                            0      538     556
ki1113344-GMS-Nepal         NEPAL                          0                            1        1     556
ki1113344-GMS-Nepal         NEPAL                          1                            0       17     556
ki1113344-GMS-Nepal         NEPAL                          1                            1        0     556
ki1126311-ZVITAMBO          ZIMBABWE                       0                            0    10024   10405
ki1126311-ZVITAMBO          ZIMBABWE                       0                            1      279   10405
ki1126311-ZVITAMBO          ZIMBABWE                       1                            0      100   10405
ki1126311-ZVITAMBO          ZIMBABWE                       1                            1        2   10405
ki1148112-iLiNS-DOSE        MALAWI                         0                            0      978     983
ki1148112-iLiNS-DOSE        MALAWI                         0                            1        5     983
ki1148112-iLiNS-DOSE        MALAWI                         1                            0        0     983
ki1148112-iLiNS-DOSE        MALAWI                         1                            1        0     983
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            0     1028    1044
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            1       16    1044
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            0        0    1044
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            1        0    1044
kiGH5241-JiVitA-3           BANGLADESH                     0                            0    16483   16844
kiGH5241-JiVitA-3           BANGLADESH                     0                            1      141   16844
kiGH5241-JiVitA-3           BANGLADESH                     1                            0      217   16844
kiGH5241-JiVitA-3           BANGLADESH                     1                            1        3   16844
kiGH5241-JiVitA-4           BANGLADESH                     0                            0     4886    4944
kiGH5241-JiVitA-4           BANGLADESH                     0                            1       37    4944
kiGH5241-JiVitA-4           BANGLADESH                     1                            0       20    4944
kiGH5241-JiVitA-4           BANGLADESH                     1                            1        1    4944


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH


ALL STRATA DROPPED. JOB FINISHED
















