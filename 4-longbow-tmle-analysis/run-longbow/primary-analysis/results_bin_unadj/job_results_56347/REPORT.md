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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predexfd6    wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       58     194  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       10     194  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      102     194  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       24     194  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        5      57  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0      57  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0       50      57  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        2      57  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        4      37  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0      37  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0                 0       28      37  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        5      37  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        3      23  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        0      23  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       19      23  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        1      23  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1                 0       71     208  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1                 1        1     208  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0                 0      132     208  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0                 1        4     208  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        1      90  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0      90  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       80      90  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        9      90  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        0     105  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     105  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      104     105  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     105  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7       7  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0       7  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0       7  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0       7  wasted           
Birth       ki1000108-IRC              INDIA                          1                 0        0      12  wasted           
Birth       ki1000108-IRC              INDIA                          1                 1        0      12  wasted           
Birth       ki1000108-IRC              INDIA                          0                 0        8      12  wasted           
Birth       ki1000108-IRC              INDIA                          0                 1        4      12  wasted           
Birth       ki1000109-EE               PAKISTAN                       1                 0       20      28  wasted           
Birth       ki1000109-EE               PAKISTAN                       1                 1        4      28  wasted           
Birth       ki1000109-EE               PAKISTAN                       0                 0        3      28  wasted           
Birth       ki1000109-EE               PAKISTAN                       0                 1        1      28  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0      283     325  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1       27     325  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0       14     325  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        1     325  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      116     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1       39     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 0      299     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 1       78     532  wasted           
Birth       ki1101329-Keneba           GAMBIA                         1                 0      351    1327  wasted           
Birth       ki1101329-Keneba           GAMBIA                         1                 1       99    1327  wasted           
Birth       ki1101329-Keneba           GAMBIA                         0                 0      645    1327  wasted           
Birth       ki1101329-Keneba           GAMBIA                         0                 1      232    1327  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 0      309     522  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 1       81     522  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 0      111     522  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 1       21     522  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7437   10744  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      955   10744  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2112   10744  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      240   10744  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1626    2224  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      176    2224  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      375    2224  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1       47    2224  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       80     231  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     231  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      143     231  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     231  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       29     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      179     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       11     218  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     218  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      191     218  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       16     218  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       12     225  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     225  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      209     225  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        4     225  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1                 0       92     271  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     271  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0                 0      179     271  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     271  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     233  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     233  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      223     233  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7     233  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     232  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     232  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      230     232  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     232  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       17      19  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        2      19  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      19  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      19  wasted           
6 months    ki1000108-IRC              INDIA                          1                 0        0      14  wasted           
6 months    ki1000108-IRC              INDIA                          1                 1        0      14  wasted           
6 months    ki1000108-IRC              INDIA                          0                 0       11      14  wasted           
6 months    ki1000108-IRC              INDIA                          0                 1        3      14  wasted           
6 months    ki1000109-EE               PAKISTAN                       1                 0       39      48  wasted           
6 months    ki1000109-EE               PAKISTAN                       1                 1        4      48  wasted           
6 months    ki1000109-EE               PAKISTAN                       0                 0        5      48  wasted           
6 months    ki1000109-EE               PAKISTAN                       0                 1        0      48  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0      330     395  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       46     395  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 0       17     395  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 1        2     395  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        0     168  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        0     168  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0      127     168  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       41     168  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      138     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        3     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      440     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     603  wasted           
6 months    ki1101329-Keneba           GAMBIA                         1                 0      562    1908  wasted           
6 months    ki1101329-Keneba           GAMBIA                         1                 1       24    1908  wasted           
6 months    ki1101329-Keneba           GAMBIA                         0                 0     1232    1908  wasted           
6 months    ki1101329-Keneba           GAMBIA                         0                 1       90    1908  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      370     547  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       36     547  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      127     547  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       14     547  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         1                 0       47     272  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     272  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      221     272  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         0                 1        4     272  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     6962    9882  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      663    9882  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2066    9882  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      191    9882  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3164    4275  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      163    4275  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0      870    4275  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       78    4275  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       69     205  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        7     205  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      116     205  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       13     205  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       24     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      142     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        2     169  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       11     209  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     209  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      174     209  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       24     209  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       12     219  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     219  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      202     219  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5     219  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1                 0       66     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1                 1        2     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0                 0      131     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0                 1        2     201  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     216  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     216  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      212     216  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     216  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     202  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     202  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      197     202  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     202  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       18      19  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      19  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      19  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      19  wasted           
24 months   ki1000108-IRC              INDIA                          1                 0        0      14  wasted           
24 months   ki1000108-IRC              INDIA                          1                 1        0      14  wasted           
24 months   ki1000108-IRC              INDIA                          0                 0       14      14  wasted           
24 months   ki1000108-IRC              INDIA                          0                 1        0      14  wasted           
24 months   ki1000109-EE               PAKISTAN                       1                 0       17      23  wasted           
24 months   ki1000109-EE               PAKISTAN                       1                 1        3      23  wasted           
24 months   ki1000109-EE               PAKISTAN                       0                 0        3      23  wasted           
24 months   ki1000109-EE               PAKISTAN                       0                 1        0      23  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      127     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       10     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      390     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       52     579  wasted           
24 months   ki1101329-Keneba           GAMBIA                         1                 0      463    1514  wasted           
24 months   ki1101329-Keneba           GAMBIA                         1                 1       51    1514  wasted           
24 months   ki1101329-Keneba           GAMBIA                         0                 0      891    1514  wasted           
24 months   ki1101329-Keneba           GAMBIA                         0                 1      109    1514  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      294     469  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       61     469  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0       85     469  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       29     469  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         1                 0       33     184  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     184  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      147     184  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         0                 1        3     184  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     3046    5067  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      863    5067  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0      909    5067  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      249    5067  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2663    4184  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      615    4184  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      704    4184  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      202    4184  wasted           


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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/135278fb-1f77-41e6-b0fa-fc0edb0c7097/a69ed1ac-1b03-4389-ba39-c2a0c3a079ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/135278fb-1f77-41e6-b0fa-fc0edb0c7097/a69ed1ac-1b03-4389-ba39-c2a0c3a079ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/135278fb-1f77-41e6-b0fa-fc0edb0c7097/a69ed1ac-1b03-4389-ba39-c2a0c3a079ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/135278fb-1f77-41e6-b0fa-fc0edb0c7097/a69ed1ac-1b03-4389-ba39-c2a0c3a079ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1470588   0.0626630   0.2314546
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1904762   0.1217345   0.2592179
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2516129   0.1832343   0.3199915
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2068966   0.1659679   0.2478252
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.2200000   0.1817119   0.2582881
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.2645382   0.2353346   0.2937418
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2076923   0.1673938   0.2479908
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1590909   0.0966348   0.2215470
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1137989   0.1065928   0.1210049
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1020408   0.0889920   0.1150897
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0976693   0.0806594   0.1146791
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1113744   0.0741972   0.1485516
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0409556   0.0249051   0.0570062
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0680787   0.0544974   0.0816600
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0886700   0.0609936   0.1163463
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0992908   0.0498844   0.1486971
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0869508   0.0795981   0.0943035
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0846256   0.0723420   0.0969092
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0489931   0.0388650   0.0591212
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0822785   0.0638659   0.1006911
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0921053   0.0269330   0.1572776
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1007752   0.0487006   0.1528498
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0729927   0.0293969   0.1165885
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1176471   0.0875846   0.1477095
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0992218   0.0733681   0.1250755
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1090000   0.0896784   0.1283216
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1718310   0.1325477   0.2111143
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2543860   0.1743541   0.3344178
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2207726   0.2050521   0.2364930
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2150259   0.1864267   0.2436252
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1876144   0.1722075   0.2030213
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2229581   0.1895334   0.2563827


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1752577   0.1216204   0.2288951
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.2494348   0.2261459   0.2727237
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1954023   0.1613549   0.2294497
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1112249   0.1049045   0.1175452
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1002698   0.0846581   0.1158815
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0597484   0.0491105   0.0703864
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0914077   0.0672348   0.1155805
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0864198   0.0802086   0.0926309
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0563743   0.0475411   0.0652074
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0975610   0.0568436   0.1382784
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1056803   0.0901896   0.1211711
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1918977   0.1562203   0.2275751
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2194592   0.2057462   0.2331723
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1952677   0.1809764   0.2095589


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.2952381   0.6575460   2.551368
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8222812   0.5875410   1.150807
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.2024464   0.9784960   1.477653
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7659933   0.4943584   1.186883
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8966770   0.7776591   1.033910
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1403220   0.7850997   1.656266
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.6622540   1.0708152   2.580360
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1197794   0.6223492   2.014794
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9732583   0.8199416   1.155243
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.6793896   1.2373619   2.279324
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0941307   0.4555621   2.627791
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.6117647   0.8417271   3.086256
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.0985490   0.8015931   1.505514
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4804429   1.0034471   2.184182
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9739702   0.8370443   1.133295
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1883846   1.0039776   1.406663


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0281989   -0.0425571   0.0989549
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0316881   -0.0881879   0.0248117
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0294348   -0.0024100   0.0612797
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0122900   -0.0311731   0.0065930
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0025740   -0.0058359   0.0006879
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0026005   -0.0051023   0.0103034
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0187928    0.0042140   0.0333716
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0027377   -0.0118650   0.0173404
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0005311   -0.0038690   0.0028068
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0073812    0.0026772   0.0120852
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0054557   -0.0470421   0.0579535
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0340885   -0.0063670   0.0745439
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0064585   -0.0148611   0.0277781
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0200667   -0.0018400   0.0419733
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0013133   -0.0088009   0.0061743
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0076533   -0.0002738   0.0155804


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1608997   -0.3544668   0.4801723
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1440860   -0.4316602   0.0857238
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.1180060   -0.0191368   0.2366939
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0628959   -0.1637323   0.0292031
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0231422   -0.0528799   0.0057557
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0259353   -0.0538619   0.0996903
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.3145320    0.0298959   0.5156537
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0299507   -0.1435240   0.1771091
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0061452   -0.0454751   0.0317052
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1309318    0.0399722   0.2132732
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0559211   -0.6686320   0.4658588
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.3183424   -0.1756416   0.6047629
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0611138   -0.1637440   0.2425248
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1045696   -0.0161000   0.2109088
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0059844   -0.0406845   0.0275587
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0391938   -0.0019846   0.0786799
