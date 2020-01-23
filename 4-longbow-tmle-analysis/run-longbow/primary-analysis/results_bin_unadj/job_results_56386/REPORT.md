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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed3    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      126     202  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        4     202  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       68     202  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        4     202  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       11      55  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0      55  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       44      55  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0      55  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       22      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       17      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      39  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        8      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       16      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1      25  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                  0       47     218  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     218  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                  0      171     218  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     218  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       12      99  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0      99  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       87      99  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0      99  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       15      95  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0      95  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       80      95  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0      95  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        4       4  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       4  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       4  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       4  swasted          
Birth       ki1000108-IRC              INDIA                          1                  0        0       9  swasted          
Birth       ki1000108-IRC              INDIA                          1                  1        0       9  swasted          
Birth       ki1000108-IRC              INDIA                          0                  0        9       9  swasted          
Birth       ki1000108-IRC              INDIA                          0                  1        0       9  swasted          
Birth       ki1000109-EE               PAKISTAN                       1                  0       22      22  swasted          
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      22  swasted          
Birth       ki1000109-EE               PAKISTAN                       0                  0        0      22  swasted          
Birth       ki1000109-EE               PAKISTAN                       0                  1        0      22  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0      303     325  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        7     325  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     325  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0     325  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0      375     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1        6     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      144     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1        7     532  swasted          
Birth       ki1101329-Keneba           GAMBIA                         1                  0     1052    1282  swasted          
Birth       ki1101329-Keneba           GAMBIA                         1                  1       81    1282  swasted          
Birth       ki1101329-Keneba           GAMBIA                         0                  0      138    1282  swasted          
Birth       ki1101329-Keneba           GAMBIA                         0                  1       11    1282  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      335     422  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       17     422  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0       70     422  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1        0     422  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     9443   10634  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      193   10634  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0      981   10634  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       17   10634  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0       89      97  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0      97  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0        8      97  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0      97  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      151     233  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     233  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       80     233  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     233  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       60     187  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     187  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      127     187  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     187  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                  0      109     210  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1     210  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                  0       96     210  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        4     210  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       70     227  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     227  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      157     227  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     227  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                  0       61     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                  0      209     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     270  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       22     244  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     244  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      220     244  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     244  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       46     212  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      166     212  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     212  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       10      10  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      10  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10  swasted          
6 months    ki1000108-IRC              INDIA                          1                  0        0      10  swasted          
6 months    ki1000108-IRC              INDIA                          1                  1        0      10  swasted          
6 months    ki1000108-IRC              INDIA                          0                  0       10      10  swasted          
6 months    ki1000108-IRC              INDIA                          0                  1        0      10  swasted          
6 months    ki1000109-EE               PAKISTAN                       1                  0       38      39  swasted          
6 months    ki1000109-EE               PAKISTAN                       1                  1        1      39  swasted          
6 months    ki1000109-EE               PAKISTAN                       0                  0        0      39  swasted          
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      39  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      360     395  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       16     395  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       18     395  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        1     395  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      427     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        1     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      171     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        4     603  swasted          
6 months    ki1101329-Keneba           GAMBIA                         1                  0     1516    1742  swasted          
6 months    ki1101329-Keneba           GAMBIA                         1                  1       25    1742  swasted          
6 months    ki1101329-Keneba           GAMBIA                         0                  0      196    1742  swasted          
6 months    ki1101329-Keneba           GAMBIA                         0                  1        5    1742  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      360     441  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        7     441  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       74     441  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0     441  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8378    9310  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      121    9310  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0      803    9310  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1        8    9310  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0       76      88  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0      88  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0       12      88  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0      88  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      135     205  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     205  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       70     205  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     205  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       51     152  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     152  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      100     152  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     152  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                  0      102     202  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     202  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       99     202  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        1     202  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       67     220  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     220  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      153     220  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     220  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                  0       43     198  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     198  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                  0      154     198  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                  1        1     198  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       19     228  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     228  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      209     228  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     228  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       38     184  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     184  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      146     184  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     184  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       10      10  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      10  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10  swasted          
24 months   ki1000108-IRC              INDIA                          1                  0        0      10  swasted          
24 months   ki1000108-IRC              INDIA                          1                  1        0      10  swasted          
24 months   ki1000108-IRC              INDIA                          0                  0       10      10  swasted          
24 months   ki1000108-IRC              INDIA                          0                  1        0      10  swasted          
24 months   ki1000109-EE               PAKISTAN                       1                  0       20      20  swasted          
24 months   ki1000109-EE               PAKISTAN                       1                  1        0      20  swasted          
24 months   ki1000109-EE               PAKISTAN                       0                  0        0      20  swasted          
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      20  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      403     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        5     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      167     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        4     579  swasted          
24 months   ki1101329-Keneba           GAMBIA                         1                  0     1254    1421  swasted          
24 months   ki1101329-Keneba           GAMBIA                         1                  1       20    1421  swasted          
24 months   ki1101329-Keneba           GAMBIA                         0                  0      144    1421  swasted          
24 months   ki1101329-Keneba           GAMBIA                         0                  1        3    1421  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      313     384  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        9     384  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       60     384  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1        2     384  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     4246    4833  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      170    4833  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      400    4833  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       17    4833  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      131     150  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        4     150  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       14     150  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        1     150  swasted          


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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/03b61155-adb3-4090-9e91-b9cfb6ccaf02/facf258d-2e75-447d-9c55-3adb5f5a5d62/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/03b61155-adb3-4090-9e91-b9cfb6ccaf02/facf258d-2e75-447d-9c55-3adb5f5a5d62/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/03b61155-adb3-4090-9e91-b9cfb6ccaf02/facf258d-2e75-447d-9c55-3adb5f5a5d62/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/03b61155-adb3-4090-9e91-b9cfb6ccaf02/facf258d-2e75-447d-9c55-3adb5f5a5d62/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE   BANGLADESH   1                    NA                0.0157480   0.0032351   0.0282610
Birth       ki1017093b-PROVIDE   BANGLADESH   0                    NA                0.0463576   0.0127899   0.0799253
Birth       ki1101329-Keneba     GAMBIA       1                    NA                0.0714916   0.0564836   0.0864996
Birth       ki1101329-Keneba     GAMBIA       0                    NA                0.0738255   0.0318231   0.1158279
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0200291   0.0169566   0.0231015
Birth       kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0170341   0.0084167   0.0256514
6 months    ki1101329-Keneba     GAMBIA       1                    NA                0.0162232   0.0099138   0.0225326
6 months    ki1101329-Keneba     GAMBIA       0                    NA                0.0248756   0.0033383   0.0464129
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0142370   0.0114519   0.0170221
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0098644   0.0015474   0.0181813
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0384964   0.0312267   0.0457660
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0407674   0.0234199   0.0581148


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0244361   0.0113037   0.0375685
Birth       ki1101329-Keneba     GAMBIA       NA                   NA                0.0717629   0.0576293   0.0858965
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0197480   0.0168324   0.0226636
6 months    ki1101329-Keneba     GAMBIA       NA                   NA                0.0172216   0.0111106   0.0233326
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0138561   0.0112336   0.0164785
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0386923   0.0318833   0.0455013


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093b-PROVIDE   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE   BANGLADESH   0                    1                 2.9437086   1.0046589   8.625236
Birth       ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba     GAMBIA       0                    1                 1.0326456   0.5630926   1.893751
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3    BANGLADESH   0                    1                 0.8504678   0.5028626   1.438356
6 months    ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba     GAMBIA       0                    1                 1.5333333   0.5935144   3.961338
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    1                 0.6928697   0.2896953   1.657150
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    1                 1.0589928   0.6648687   1.686748


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE   BANGLADESH   1                    NA                 0.0086881   -0.0015476   0.0189237
Birth       ki1101329-Keneba     GAMBIA       1                    NA                 0.0002713   -0.0049129   0.0054554
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0002811   -0.0011334   0.0005712
6 months    ki1101329-Keneba     GAMBIA       1                    NA                 0.0009984   -0.0015944   0.0035911
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0003809   -0.0011520   0.0003902
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0001959   -0.0014244   0.0018163


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE   BANGLADESH   1                    NA                 0.3555421   -0.1520028   0.6394748
Birth       ki1101329-Keneba     GAMBIA       1                    NA                 0.0037799   -0.0711403   0.0734598
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0142333   -0.0582832   0.0279830
6 months    ki1101329-Keneba     GAMBIA       1                    NA                 0.0579710   -0.1036799   0.1959457
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0274898   -0.0845481   0.0265667
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0050642   -0.0378795   0.0462311
