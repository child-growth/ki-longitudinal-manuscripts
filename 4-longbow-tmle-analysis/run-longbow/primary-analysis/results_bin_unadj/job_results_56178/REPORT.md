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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed3    stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      112     215  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       26     215  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       63     215  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       14     215  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       10      57  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        2      57  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       39      57  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        6      57  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       16      41  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        8      41  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       17      41  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      41  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        8      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       16      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        2      26  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                  0       41     223  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                  1        8     223  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                  0      158     223  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                  1       16     223  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       12     100  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     100  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       79     100  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        9     100  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       14     102  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        3     102  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       69     102  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       16     102  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        4       4  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       4  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       4  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       4  stunted          
Birth       ki1000108-IRC              INDIA                          1                  0        0      10  stunted          
Birth       ki1000108-IRC              INDIA                          1                  1        0      10  stunted          
Birth       ki1000108-IRC              INDIA                          0                  0       10      10  stunted          
Birth       ki1000108-IRC              INDIA                          0                  1        0      10  stunted          
Birth       ki1000109-EE               PAKISTAN                       1                  0       20      35  stunted          
Birth       ki1000109-EE               PAKISTAN                       1                  1       15      35  stunted          
Birth       ki1000109-EE               PAKISTAN                       0                  0        0      35  stunted          
Birth       ki1000109-EE               PAKISTAN                       0                  1        0      35  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0      257     364  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1       89     364  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0       12     364  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     364  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0      353     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1       34     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      138     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1       14     539  stunted          
Birth       ki1101329-Keneba           GAMBIA                         1                  0     1130    1356  stunted          
Birth       ki1101329-Keneba           GAMBIA                         1                  1       68    1356  stunted          
Birth       ki1101329-Keneba           GAMBIA                         0                  0      149    1356  stunted          
Birth       ki1101329-Keneba           GAMBIA                         0                  1        9    1356  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      317     458  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       63     458  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0       63     458  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       15     458  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8076   13276  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3938   13276  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0      818   13276  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      444   13276  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0       71     116  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       34     116  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0        7     116  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4     116  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      128     233  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       24     233  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       61     233  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       20     233  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       59     187  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     187  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      123     187  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        4     187  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       90     210  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                  1       20     210  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                  0       81     210  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       19     210  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       66     227  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        4     227  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      150     227  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        7     227  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                  0       49     270  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                  1       12     270  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                  0      163     270  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                  1       46     270  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       20     244  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        2     244  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      177     244  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       45     244  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       34     212  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1       12     212  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      125     212  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       41     212  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      10  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      10  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10  stunted          
6 months    ki1000108-IRC              INDIA                          1                  0        0      10  stunted          
6 months    ki1000108-IRC              INDIA                          1                  1        0      10  stunted          
6 months    ki1000108-IRC              INDIA                          0                  0        8      10  stunted          
6 months    ki1000108-IRC              INDIA                          0                  1        2      10  stunted          
6 months    ki1000109-EE               PAKISTAN                       1                  0       17      39  stunted          
6 months    ki1000109-EE               PAKISTAN                       1                  1       22      39  stunted          
6 months    ki1000109-EE               PAKISTAN                       0                  0        0      39  stunted          
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      39  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      260     398  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1      119     398  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       13     398  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     398  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      364     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       64     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      144     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       32     604  stunted          
6 months    ki1101329-Keneba           GAMBIA                         1                  0     1317    1742  stunted          
6 months    ki1101329-Keneba           GAMBIA                         1                  1      224    1742  stunted          
6 months    ki1101329-Keneba           GAMBIA                         0                  0      166    1742  stunted          
6 months    ki1101329-Keneba           GAMBIA                         0                  1       35    1742  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      292     441  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       75     441  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       56     441  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       18     441  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6391    9328  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     2123    9328  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0      597    9328  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      217    9328  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0       64      88  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       12      88  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0        8      88  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4      88  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       71     205  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       64     205  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       35     205  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       35     205  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       49     152  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        3     152  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0       96     152  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        4     152  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       49     202  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       53     202  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       66     202  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       34     202  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       53     220  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1       14     220  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      119     220  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       34     220  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                  0       25     198  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                  1       18     198  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                  0      101     198  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                  1       54     198  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       14     228  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        5     228  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      134     228  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       75     228  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       10     184  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1       28     184  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       39     184  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      107     184  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        3      10  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        7      10  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10  stunted          
24 months   ki1000108-IRC              INDIA                          1                  0        0      10  stunted          
24 months   ki1000108-IRC              INDIA                          1                  1        0      10  stunted          
24 months   ki1000108-IRC              INDIA                          0                  0        4      10  stunted          
24 months   ki1000108-IRC              INDIA                          0                  1        6      10  stunted          
24 months   ki1000109-EE               PAKISTAN                       1                  0        5      20  stunted          
24 months   ki1000109-EE               PAKISTAN                       1                  1       15      20  stunted          
24 months   ki1000109-EE               PAKISTAN                       0                  0        0      20  stunted          
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      20  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      266     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1      142     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      122     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       48     578  stunted          
24 months   ki1101329-Keneba           GAMBIA                         1                  0      855    1420  stunted          
24 months   ki1101329-Keneba           GAMBIA                         1                  1      419    1420  stunted          
24 months   ki1101329-Keneba           GAMBIA                         0                  0       81    1420  stunted          
24 months   ki1101329-Keneba           GAMBIA                         0                  1       65    1420  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      181     384  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      141     384  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       33     384  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       29     384  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2275    4852  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     2158    4852  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      181    4852  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      238    4852  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0       84     151  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       52     151  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0        6     151  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        9     151  stunted          


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/fbd4edb2-191f-412a-8a06-28ac40b98463/33d87987-1e3d-489b-bc92-6cf105698a4e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fbd4edb2-191f-412a-8a06-28ac40b98463/33d87987-1e3d-489b-bc92-6cf105698a4e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fbd4edb2-191f-412a-8a06-28ac40b98463/33d87987-1e3d-489b-bc92-6cf105698a4e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fbd4edb2-191f-412a-8a06-28ac40b98463/33d87987-1e3d-489b-bc92-6cf105698a4e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1884058   0.1230119   0.2537997
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1818182   0.0954689   0.2681674
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.1632653   0.0595443   0.2669863
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.0919540   0.0489223   0.1349857
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2572254   0.2236819   0.2907690
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3333333   0.0564891   0.6101775
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.0878553   0.0596252   0.1160854
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.0921053   0.0460913   0.1381192
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                0.0567613   0.0436539   0.0698687
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                0.0569620   0.0208096   0.0931144
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1657895   0.1283571   0.2032218
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1923077   0.1047495   0.2798659
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3277843   0.3183050   0.3372635
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3518225   0.3245233   0.3791217
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1578947   0.0998013   0.2159882
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2469136   0.1528039   0.3410233
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1818182   0.1095692   0.2540672
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1900000   0.1129267   0.2670733
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.1967213   0.0967794   0.2966632
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.2200957   0.1638218   0.2763696
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2608696   0.1336751   0.3880640
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2469880   0.1812283   0.3127476
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1495327   0.1157198   0.1833456
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1818182   0.1247893   0.2388471
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                0.1453602   0.1277572   0.1629631
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                0.1741294   0.1216889   0.2265698
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2043597   0.1630583   0.2456610
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2432432   0.1453791   0.3411074
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2493540   0.2384552   0.2602529
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2665848   0.2332624   0.2999071
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4740741   0.3896379   0.5585102
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.5000000   0.3825830   0.6174170
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5196078   0.4224089   0.6168068
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.3400000   0.2469241   0.4330759
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2089552   0.1113828   0.3065277
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2222222   0.1561965   0.2882479
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4186047   0.2707785   0.5664308
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.3483871   0.2731889   0.4235853
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2631579   0.0647216   0.4615942
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3588517   0.2936789   0.4240244
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7368421   0.5964525   0.8772318
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7328767   0.6609109   0.8048425
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3480392   0.3017778   0.3943006
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2823529   0.2146276   0.3500783
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.3288854   0.3030784   0.3546924
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.4452055   0.3645617   0.5258493
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4378882   0.3836283   0.4921481
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4677419   0.3433814   0.5921025
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.4868035   0.4691434   0.5044637
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.5680191   0.5091045   0.6269337
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3823529   0.2957347   0.4689712
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.6000000   0.3670443   0.8329557


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1860465   0.1339088   0.2381842
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                0.1076233   0.0668572   0.1483894
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2609890   0.2179233   0.3040547
Birth       ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                0.0567847   0.0444621   0.0691072
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1703057   0.1358418   0.2047695
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.3300693   0.3209240   0.3392146
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1857143   0.1329930   0.2384356
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                0.2148148   0.1657364   0.2638932
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2500000   0.1915738   0.3084262
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                0.1486797   0.1319680   0.1653914
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.2108844   0.1727677   0.2490010
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2508576   0.2404565   0.2612588
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4829268   0.4143544   0.5514993
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4306931   0.3622377   0.4991484
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2181818   0.1634817   0.2728819
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.3636364   0.2964623   0.4308104
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3508772   0.2887937   0.4129607
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7336957   0.6696530   0.7977384
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.3408451   0.3161830   0.3655071
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4427083   0.3929634   0.4924533
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.4938170   0.4765272   0.5111067
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4039735   0.3218653   0.4860818


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9650350   0.5358895   1.7378442
Birth       ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 0.5632184   0.2558581   1.2398080
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.2958801   0.6113712   2.7467853
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.0483746   0.5788258   1.8988256
Birth       ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA                         0                    1                 1.0035369   0.5107633   1.9717278
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.1599512   0.6977930   1.9282033
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0733356   0.9900302   1.1636507
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.5637860   0.9206781   2.6561149
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 1.0450000   0.5922461   1.8438703
6 months    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                 1.1188198   0.6335135   1.9758975
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9467871   0.5432330   1.6501314
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.0057497   0.4866253   2.0786680
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.2159091   0.8259851   1.7899050
6 months    ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 1.1979167   0.8658791   1.6572803
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.1902703   0.7587688   1.8671606
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0691016   0.9370218   1.2197989
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.0546875   0.7854555   1.4162046
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 0.6543396   0.4696865   0.9115875
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 1.0634921   0.6114591   1.8496991
24 months   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                 0.8322581   0.5501886   1.2589382
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.3636364   0.6278426   2.9617362
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9946184   0.8027266   1.2323819
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 0.8112676   0.6166923   1.0672342
24 months   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 1.3536797   1.1111801   1.6491014
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.0681766   0.7966190   1.4323048
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.1668344   1.0473344   1.2999693
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.5692308   1.0057767   2.4483420


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0023593   -0.0411542    0.0364356
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0556420   -0.1433470    0.0320630
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0037636   -0.0100156    0.0175428
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0011985   -0.0140259    0.0164229
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0000234   -0.0044574    0.0045042
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0045162   -0.0117267    0.0207591
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0022850   -0.0004001    0.0049702
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0309465   -0.0078861    0.0697791
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0038961   -0.0464126    0.0542048
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0180935   -0.0706973    0.1068843
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0108696   -0.1229910    0.1012519
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0000862   -0.0108674    0.0110398
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0094077   -0.0099468    0.0287622
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0033195   -0.0030777    0.0097167
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0065247   -0.0113511    0.0244005
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0015036   -0.0015538    0.0045610
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0088528   -0.0405600    0.0582655
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0889148   -0.1566834   -0.0211461
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0092266   -0.0727106    0.0911638
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0549683   -0.1848659    0.0749293
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0877193   -0.1037709    0.2792095
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0031465   -0.1283261    0.1220332
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0193195   -0.0435655    0.0049265
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0119597    0.0030620    0.0208574
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0048201   -0.0171145    0.0267548
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0070135    0.0015571    0.0124698
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0216206   -0.0032699    0.0465111


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0126812   -0.2442049    0.1757603
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.5170068   -1.5702556    0.1046378
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0144204   -0.0378960    0.0640998
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0134582   -0.1731686    0.1703966
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0004119   -0.0816941    0.0762858
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0265182   -0.0735854    0.1172879
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0069229   -0.0012441    0.0150233
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.1638756   -0.0656087    0.3439393
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0209790   -0.2910537    0.2575971
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0842284   -0.4378095    0.4167255
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0434783   -0.6037184    0.3210486
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0002744   -0.0352245    0.0345560
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0591900   -0.0704578    0.1731357
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0223267   -0.0216106    0.0643743
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0309396   -0.0575470    0.1120224
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0059939   -0.0062763    0.0181146
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0183315   -0.0895411    0.1155238
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.2064458   -0.3777084   -0.0564728
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0422886   -0.4174316    0.3529062
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.1511628   -0.5704821    0.1561981
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.2500000   -0.5519753    0.6375587
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0042885   -0.1902553    0.1526227
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0587719   -0.1351735    0.0124875
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0350883    0.0086274    0.0608429
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0108878   -0.0399297    0.0592221
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0142026    0.0031247    0.0251573
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0535198   -0.0115565    0.1144095
