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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        enstunt    wast_rec90d   n_cell      n  outcome_variable 
------------  -------------------------  -----------------------------  --------  ------------  -------  -----  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       34    124  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       61    124  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       10    124  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       19    124  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        5     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       15     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        1     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        3     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       51    181  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       92    181  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       20    181  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       18    181  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0       16     98  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       63     98  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        4     98  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       15     98  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0        3     35  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1       21     35  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        3     35  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        8     35  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       17     87  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       57     87  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     87  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       12     87  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        8     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       31     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       11     51  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       88    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      159    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       32    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       45    324  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          0                    0      139    395  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          0                    1      203    395  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          1                    0       23    395  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          1                    1       30    395  wast_rec90d      
0-24 months   ki1000109-EE               PAKISTAN                       0                    0       77    323  wast_rec90d      
0-24 months   ki1000109-EE               PAKISTAN                       0                    1       95    323  wast_rec90d      
0-24 months   ki1000109-EE               PAKISTAN                       1                    0       83    323  wast_rec90d      
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       68    323  wast_rec90d      
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0       74    204  wast_rec90d      
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    1       68    204  wast_rec90d      
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0       38    204  wast_rec90d      
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    1       24    204  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0      320    814  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1      236    814  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      184    814  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       74    814  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      117    234  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        9    234  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      104    234  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        4    234  wast_rec90d      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0      162    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1      187    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       40    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       32    421  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      106    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1      153    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       23    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       26    308  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       88    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      177    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       29    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       16    310  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      243    713  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      409    713  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       23    713  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       38    713  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0      600   1828  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1     1027   1828  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      112   1828  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       89   1828  wast_rec90d      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0        7     38  wast_rec90d      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       12     38  wast_rec90d      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       14     38  wast_rec90d      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        5     38  wast_rec90d      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0      457    820  wast_rec90d      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1       24    820  wast_rec90d      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      327    820  wast_rec90d      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       12    820  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      249    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1      300    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       47    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       47    643  wast_rec90d      
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0       40    190  wast_rec90d      
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    1       68    190  wast_rec90d      
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0       40    190  wast_rec90d      
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    1       42    190  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           0                    0        1      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           0                    1        6      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           1                    0        1      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           1                    1        1      9  wast_rec90d      
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0      613   4431  wast_rec90d      
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1     3811   4431  wast_rec90d      
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0        2   4431  wast_rec90d      
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1        5   4431  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     1443   3615  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1860   3615  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      208   3615  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      104   3615  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      141    381  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      167    381  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       72    381  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        1    381  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     1674   2663  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          0                    1      622   2663  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          1                    0      345   2663  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          1                    1       22   2663  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      604   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      964   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       60   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       61   1689  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       25     79  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        5     79  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       41     79  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        8     79  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2793   7571  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2380   7571  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1582   7571  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      816   7571  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      944   2069  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      386   2069  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      590   2069  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      149   2069  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0        9     63  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       43     63  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        4     63  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        7     63  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0        1     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       13     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        0     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0       23     86  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       47     86  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        4     86  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1       12     86  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0        8     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       30     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        1     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        9     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0        0     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        8     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        0     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        3     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        9     36  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       21     36  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     36  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     36  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       10     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3     14  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       51    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      111    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       15    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       24    201  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          0                    0       77    240  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          0                    1      138    240  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          1                    0       10    240  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          1                    1       15    240  wast_rec90d      
0-6 months    ki1000109-EE               PAKISTAN                       0                    0       31    127  wast_rec90d      
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       47    127  wast_rec90d      
0-6 months    ki1000109-EE               PAKISTAN                       1                    0       24    127  wast_rec90d      
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       25    127  wast_rec90d      
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0       26    113  wast_rec90d      
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    1       52    113  wast_rec90d      
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0       17    113  wast_rec90d      
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    1       18    113  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0      107    341  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    1      142    341  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0       59    341  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1       33    341  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       46     78  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     78  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       32     78  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     78  wast_rec90d      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0       52    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    1      135    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0       12    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1       24    223  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0       35    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1      127    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0        5    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       18    185  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       18    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      162    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0        3    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       14    197  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       97    340  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      222    340  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0        4    340  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       17    340  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0      143    724  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1      529    724  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0       22    724  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       30    724  wast_rec90d      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0        0     10  wast_rec90d      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    1        4     10  wast_rec90d      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0        6     10  wast_rec90d      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     10  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       92    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1      142    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       12    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       17    263  wast_rec90d      
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0       13     52  wast_rec90d      
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    1       19     52  wast_rec90d      
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0       12     52  wast_rec90d      
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    1        8     52  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           0                    0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           0                    1        4      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           1                    0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           1                    1        0      4  wast_rec90d      
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0      487   4263  wast_rec90d      
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1     3770   4263  wast_rec90d      
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0        1   4263  wast_rec90d      
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1        5   4263  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      584   2519  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1788   2519  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0       52   2519  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       95   2519  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0       51    215  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    1      160    215  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0        4    215  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1        0    215  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          0                    0      993   1796  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      622   1796  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          1                    0      159   1796  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          1                    1       22   1796  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0      187    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    1      534    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0       11    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1       20    752  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    0        4      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    1        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    0        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1        0      4  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1077   4734  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2380   4734  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      461   4734  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      816   4734  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      173    553  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      235    553  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0       71    553  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       74    553  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       25     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       18     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        6     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       12     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        4      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        1      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        2      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       28     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       45     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       16     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        6     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0        8     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       33     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        3     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        6     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0        3     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       13     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        3     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        5     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        8     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       36     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        7     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       21     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        8     37  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       37    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       48    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       17    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       21    123  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          0                    0       62    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          0                    1       65    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          1                    0       13    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          1                    1       15    155  wast_rec90d      
6-24 months   ki1000109-EE               PAKISTAN                       0                    0       46    196  wast_rec90d      
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       48    196  wast_rec90d      
6-24 months   ki1000109-EE               PAKISTAN                       1                    0       59    196  wast_rec90d      
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       43    196  wast_rec90d      
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0       48     91  wast_rec90d      
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    1       16     91  wast_rec90d      
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0       21     91  wast_rec90d      
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        6     91  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0      213    473  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1       94    473  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      125    473  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       41    473  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       71    156  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        9    156  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       72    156  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        4    156  wast_rec90d      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0      110    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1       52    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       28    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1        8    198  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       71    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       26    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       18    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        8    123  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       70    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       15    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       26    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        2    113  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      146    373  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      187    373  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       19    373  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       21    373  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0      457   1104  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1      498   1104  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0       90   1104  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       59   1104  wast_rec90d      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0        7     28  wast_rec90d      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1        8     28  wast_rec90d      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        8     28  wast_rec90d      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        5     28  wast_rec90d      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0      457    820  wast_rec90d      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1       24    820  wast_rec90d      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      327    820  wast_rec90d      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       12    820  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      157    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1      158    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       35    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       30    380  wast_rec90d      
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0       27    138  wast_rec90d      
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    1       49    138  wast_rec90d      
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0       28    138  wast_rec90d      
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    1       34    138  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           0                    0        1      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           0                    1        2      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           1                    0        1      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           1                    1        1      5  wast_rec90d      
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0      126    168  wast_rec90d      
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1       41    168  wast_rec90d      
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0        1    168  wast_rec90d      
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1        0    168  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      859   1096  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       72   1096  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      156   1096  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1        9   1096  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0       90    166  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1        7    166  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       68    166  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        1    166  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          0                    0      681    867  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          0                    1        0    867  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          1                    0      186    867  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          1                    1        0    867  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      417    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      430    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       49    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       41    937  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       21     75  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        5     75  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       41     75  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        8     75  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1716   2837  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0   2837  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1121   2837  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0   2837  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      771   1516  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      151   1516  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      519   1516  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       75   1516  wast_rec90d      


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
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/8c538142-efb5-4b78-b9d5-2983612cfeaa/c2653866-3c47-4c9b-9d93-71fe1cb2dc08/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c538142-efb5-4b78-b9d5-2983612cfeaa/c2653866-3c47-4c9b-9d93-71fe1cb2dc08/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8c538142-efb5-4b78-b9d5-2983612cfeaa/c2653866-3c47-4c9b-9d93-71fe1cb2dc08/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c538142-efb5-4b78-b9d5-2983612cfeaa/c2653866-3c47-4c9b-9d93-71fe1cb2dc08/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6421053   0.5415390   0.7426715
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.6551724   0.4931883   0.8171566
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.6433566   0.5516582   0.7350551
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4736842   0.3251440   0.6222245
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6437247   0.5788596   0.7085898
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5844156   0.4726395   0.6961917
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5935673   0.5375254   0.6496091
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5660377   0.4252861   0.7067894
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.5523256   0.4743712   0.6302800
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.4503311   0.3631570   0.5375053
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.4788732   0.3933579   0.5643886
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3870968   0.2574775   0.5167160
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4244604   0.3811730   0.4677479
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2868217   0.2299169   0.3437265
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5358166   0.4794069   0.5922263
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4444444   0.3334788   0.5554101
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.5907336   0.5279629   0.6535042
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5306122   0.4059238   0.6553007
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6679245   0.6101642   0.7256848
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3555556   0.2390941   0.4720170
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6273006   0.5880662   0.6665350
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6229508   0.4898456   0.7560561
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.6312231   0.6063228   0.6561234
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4427861   0.3628149   0.5227573
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.6315789   0.4004047   0.8627532
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2631579   0.0627483   0.4635675
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0498960   0.0305391   0.0692530
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0353982   0.0154672   0.0553292
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5464481   0.5010763   0.5918199
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5000000   0.3845665   0.6154335
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6296296   0.5302299   0.7290293
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5121951   0.3881411   0.6362492
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.5631244   0.5460869   0.5801620
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3333333   0.2800494   0.3866173
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.2709059   0.2526274   0.2891844
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0599455   0.0368446   0.0830464
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6147959   0.5894343   0.6401575
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5041322   0.4133509   0.5949136
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1666667   0.0503410   0.2829923
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1632653   0.0532454   0.2732852
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4600812   0.4464896   0.4736728
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3402836   0.3215142   0.3590529
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2902256   0.2651987   0.3152524
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2016238   0.1722508   0.2309968
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6851852   0.6133420   0.7570284
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6153846   0.4547408   0.7760284
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.6418605   0.5759900   0.7077309
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6000000   0.4077602   0.7922398
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.6025641   0.4939801   0.7111481
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5102041   0.3676964   0.6527118
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.6666667   0.5628145   0.7705188
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.5142857   0.3442012   0.6843702
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5702811   0.5080264   0.6325358
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3586957   0.2611116   0.4562797
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7219251   0.6577474   0.7861029
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6666667   0.5116341   0.8216992
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7839506   0.7210968   0.8468044
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7826087   0.6231615   0.9420559
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.7872024   0.7567579   0.8176469
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.5769231   0.4414792   0.7123670
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6068376   0.5437757   0.6698995
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5862069   0.4031250   0.7692888
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.5937500   0.4209755   0.7665245
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4000000   0.1832408   0.6167592
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7537943   0.7364757   0.7711128
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6462585   0.5687875   0.7237295
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.3851393   0.3613994   0.4088793
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1215470   0.0739301   0.1691639
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7406380   0.7086243   0.7726517
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6451613   0.4699646   0.8203580
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.6884582   0.6730119   0.7039045
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6389977   0.6126877   0.6653076
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5759804   0.5279841   0.6239767
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5103448   0.4289055   0.5917841
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4186047   0.2525200   0.5846893
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.6666667   0.5297459   0.8035874
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.6164384   0.4887155   0.7441613
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2727273   0.0467074   0.4987472
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5647059   0.4501217   0.6792900
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5526316   0.3966164   0.7086468
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5118110   0.4171520   0.6064701
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5357143   0.3578541   0.7135745
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.5106383   0.4010295   0.6202471
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.4215686   0.3246367   0.5185005
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.2500000   0.1425681   0.3574319
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2222222   0.0900359   0.3544086
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3061889   0.2528744   0.3595035
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2469880   0.1808025   0.3131734
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3209877   0.2478343   0.3941410
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2222222   0.0817786   0.3626658
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2680412   0.1773529   0.3587296
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3076923   0.1243422   0.4910424
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5615616   0.5067476   0.6163755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5250000   0.3557633   0.6942367
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5214660   0.4878267   0.5551053
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3959732   0.3103431   0.4816032
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.5333333   0.2503122   0.8163545
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3846154   0.1100525   0.6591783
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0498960   0.0305391   0.0692530
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0353982   0.0154672   0.0553292
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5015873   0.4418155   0.5613591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4615385   0.3279930   0.5950839
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6447368   0.5283018   0.7611719
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5483871   0.4136698   0.6831044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0773362   0.0601772   0.0944952
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0545455   0.0213981   0.0876928
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5076741   0.4720111   0.5433372
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4555556   0.3500455   0.5610656
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1923077   0.0609669   0.3236484
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1632653   0.0538812   0.2726495
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1637744   0.1402479   0.1873009
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1262626   0.1002746   0.1522507


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6451613   0.5593015   0.7310211
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6077348   0.5286689   0.6868008
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.5046440   0.4456009   0.5636870
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4509804   0.3794254   0.5225353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.6105033   0.5863646   0.6346419
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4473684   0.2760904   0.6186464
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5789474   0.5004470   0.6574477
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5432918   0.5268968   0.5596869
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2418325   0.2254819   0.2581831
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1645570   0.0832789   0.2458350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4221371   0.4110175   0.4332567
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2585790   0.2392503   0.2779077
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5669291   0.4800274   0.6538309
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6194690   0.5292383   0.7096997
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.7720994   0.7419223   0.8022766
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5192308   0.3806687   0.6577929
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7475189   0.7305656   0.7644721
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3585746   0.3363886   0.3807606
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6751162   0.6617750   0.6884574
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5587703   0.5173487   0.6001920
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4642857   0.3910729   0.5374985
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2417582   0.1565924   0.3269241
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576408   0.5054408   0.6098407
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5045290   0.4730969   0.5359611
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4642857   0.2621560   0.6664155
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6014493   0.5131344   0.6897641
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0739051   0.0584895   0.0893208
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1733333   0.0886479   0.2580188
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1490765   0.1314900   0.1666630


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.0203505   0.7616227   1.3669696
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.7362700   0.5218973   1.0386976
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9078657   0.7313527   1.1269804
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9536202   0.7310186   1.2440060
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 0.8153364   0.6417975   1.0357992
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 0.8083491   0.5530285   1.1815455
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.6757325   0.5406127   0.8446239
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8294712   0.6325587   1.0876816
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8982260   0.6941872   1.1622368
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.5323289   0.3793754   0.7469490
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9930659   0.7948554   1.2407034
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.7014732   0.5830783   0.8439082
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 0.4166667   0.1790304   0.9697297
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 0.7094395   0.3580644   1.4056253
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9150000   0.7158648   1.1695296
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8134864   0.6092446   1.0861977
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.5919355   0.5030583   0.6965149
0-24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          1                    0                 0.2212779   0.1496338   0.3272251
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8199993   0.6816895   0.9863712
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 0.9795918   0.3712732   2.5846201
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.7396163   0.6947567   0.7873726
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.6947142   0.5865171   0.8228708
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8981289   0.6778968   1.1899090
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9347826   0.6677072   1.3086853
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 0.8467217   0.6072739   1.1805836
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 0.7714286   0.5352317   1.1118587
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.6289804   0.4691630   0.8432387
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.9234568   0.7199362   1.1845112
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9982883   0.8019814   1.2426466
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 0.7328777   0.5776934   0.9297488
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9660029   0.6950721   1.3425394
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 0.6736842   0.3642094   1.2461249
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8573407   0.7588297   0.9686403
0-6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          1                    0                 0.3155922   0.2122732   0.4691993
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8710886   0.6616729   1.1467830
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9281575   0.8856410   0.9727151
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8860455   0.7400695   1.0608146
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.5925926   1.0196130   2.4875627
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.4424242   0.1883842   1.0390426
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9786184   0.6912513   1.3854498
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0467033   0.7156307   1.5309401
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 0.8255719   0.6027368   1.1307903
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 0.8888889   0.4264731   1.8526924
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.8066521   0.5860020   1.1103847
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.6923077   0.3535289   1.3557305
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1479290   0.5784746   2.2779584
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9348930   0.6675568   1.3092895
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.7593461   0.6059283   0.9516084
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 0.7211538   0.2958093   1.7581017
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 0.7094395   0.3580644   1.4056253
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9201558   0.6727542   1.2585380
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8505596   0.6271110   1.1536260
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.7053030   0.3693268   1.3469166
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8973385   0.7044429   1.1430542
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 0.8489796   0.3261270   2.2100785
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.7709546   0.5997947   0.9909574


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0030560   -0.0415020    0.0476141
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0356218   -0.0731636    0.0019199
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0140951   -0.0448035    0.0166134
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0036938   -0.0241636    0.0167759
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0476816   -0.1027845    0.0074212
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0278928   -0.0757941    0.0200084
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0436251   -0.0670105   -0.0202396
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0156266   -0.0371086    0.0058555
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0095648   -0.0320347    0.0129051
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0453439   -0.0680099   -0.0226779
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003721   -0.0122459    0.0115017
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0207198   -0.0306312   -0.0108085
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.1842105   -0.3548689   -0.0135521
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0059936   -0.0174932    0.0055060
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0067902   -0.0251413    0.0115609
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0506823   -0.1200753    0.0187108
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0198326   -0.0251207   -0.0145445
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0290734   -0.0341181   -0.0240287
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0079279   -0.0148949   -0.0009610
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0021097   -0.1014388    0.0972194
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0379441   -0.0454179   -0.0304703
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0316465   -0.0456191   -0.0176740
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0135434   -0.0479879    0.0209012
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0043605   -0.0256929    0.0169720
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0356350   -0.1052979    0.0340279
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0471976   -0.1105449    0.0161496
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0570846   -0.0901012   -0.0240681
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0089206   -0.0361397    0.0182984
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0001668   -0.0214738    0.0211401
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0151029   -0.0258533   -0.0043526
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0022749   -0.0236422    0.0190925
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0745192   -0.1852886    0.0362501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0062754   -0.0110161   -0.0015347
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0265647   -0.0330630   -0.0200664
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0039359   -0.0114421    0.0035704
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0133420   -0.0215954   -0.0050887
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0172100   -0.0421132    0.0076931
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0731986   -0.0009247    0.1473219
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0795963   -0.1465625   -0.0126300
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0037303   -0.0635149    0.0560544
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0043180   -0.0319576    0.0405936
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0463526   -0.1229854    0.0302802
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0082418   -0.0590999    0.0426164
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0207767   -0.0507215    0.0091682
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0179574   -0.0476357    0.0117210
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0083815   -0.0348405    0.0516035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0039208   -0.0230373    0.0151957
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0169370   -0.0297843   -0.0040896
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0690476   -0.2585251    0.1204298
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0059936   -0.0174932    0.0055060
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0068505   -0.0321330    0.0184321
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0432876   -0.1236504    0.0370753
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0034311   -0.0090795    0.0022173
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0050061   -0.0158205    0.0058084
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0189744   -0.1308691    0.0929204
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0146979   -0.0284983   -0.0008975


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0047368   -0.0668508    0.0715208
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0586141   -0.1217039    0.0009272
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0223863   -0.0723147    0.0252174
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0062621   -0.0415741    0.0278528
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0944857   -0.2107566    0.0106196
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0618494   -0.1742196    0.0397673
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1145509   -0.1779779   -0.0545392
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0300402   -0.0720598    0.0103325
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0164578   -0.0557504    0.0213724
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0728321   -0.1107094   -0.0362466
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0005936   -0.0197144    0.0181687
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0339389   -0.0505300   -0.0176099
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.4117647   -0.9077869   -0.0447077
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.1365211   -0.4279362    0.0954216
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0125825   -0.0472244    0.0209135
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0875421   -0.2162356    0.0275340
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0365045   -0.0463877   -0.0267146
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1202212   -0.1408118   -0.1000023
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0130637   -0.0246304   -0.0016276
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0128205   -0.8402175    0.4425630
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0898857   -0.1078201   -0.0722417
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1223863   -0.1775341   -0.0698214
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0201646   -0.0729686    0.0300408
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0068399   -0.0408729    0.0260803
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0628561   -0.1940884    0.0539535
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0761905   -0.1855731    0.0231004
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1112335   -0.1788422   -0.0475023
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0125114   -0.0514810    0.0250140
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0002129   -0.0277699    0.0266053
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0195609   -0.0337192   -0.0055964
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0037628   -0.0397434    0.0309726
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.1435185   -0.3845587    0.0555586
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0083950   -0.0147716   -0.0020585
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0740842   -0.0924786   -0.0559995
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0053426   -0.0155997    0.0048110
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0197626   -0.0320810   -0.0075911
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0307999   -0.0764435    0.0129084
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1488372   -0.0337380    0.2991666
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1482675   -0.2872539   -0.0242877
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0066496   -0.1189681    0.0943947
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0083661   -0.0646287    0.0763562
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0998363   -0.2775184    0.0531331
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0340909   -0.2649033    0.1546041
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0727953   -0.1826729    0.0268740
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0592593   -0.1620039    0.0344007
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0303214   -0.1392634    0.1746627
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070311   -0.0419380    0.0267064
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0335699   -0.0594947   -0.0082794
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.1487179   -0.6420119    0.1963804
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.1365211   -0.4279362    0.0954216
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0138467   -0.0663101    0.0360355
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0719721   -0.2153327    0.0544777
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0464256   -0.1248808    0.0265577
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0099590   -0.0317047    0.0113284
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.1094675   -1.0014729    0.3849939
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0985929   -0.1945694   -0.0103275
