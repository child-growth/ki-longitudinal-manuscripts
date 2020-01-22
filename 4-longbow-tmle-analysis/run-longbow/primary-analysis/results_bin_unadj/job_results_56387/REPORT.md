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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed6    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       29     194  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     194  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      157     194  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        8     194  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        1      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       56      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0      57  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        1      37  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0      37  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       36      37  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      37  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        2      23  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      23  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       20      23  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1      23  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                  0        2     208  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     208  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                  0      206     208  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     208  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0      90  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0      90  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       90      90  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0      90  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     105  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     105  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      105     105  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     105  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7       7  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       7  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       7  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       7  swasted          
Birth       ki1000108-IRC              INDIA                          1                  0        0      12  swasted          
Birth       ki1000108-IRC              INDIA                          1                  1        0      12  swasted          
Birth       ki1000108-IRC              INDIA                          0                  0       12      12  swasted          
Birth       ki1000108-IRC              INDIA                          0                  1        0      12  swasted          
Birth       ki1000109-EE               PAKISTAN                       1                  0       24      28  swasted          
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      28  swasted          
Birth       ki1000109-EE               PAKISTAN                       0                  0        3      28  swasted          
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      28  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0      303     325  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        7     325  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     325  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0     325  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0      153     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      366     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1       11     532  swasted          
Birth       ki1101329-Keneba           GAMBIA                         1                  0      411    1327  swasted          
Birth       ki1101329-Keneba           GAMBIA                         1                  1       39    1327  swasted          
Birth       ki1101329-Keneba           GAMBIA                         0                  0      820    1327  swasted          
Birth       ki1101329-Keneba           GAMBIA                         0                  1       57    1327  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      371     522  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       19     522  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0      129     522  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1        3     522  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8209   10744  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      172   10744  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2325   10744  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       38   10744  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1780    2224  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    2224  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      415    2224  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       10    2224  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       33     231  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     231  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      196     231  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        2     231  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       12     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      197     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        2     218  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     218  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      211     218  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        5     218  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        5     225  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     225  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      220     225  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     225  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                  0        5     271  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                  0      266     271  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     271  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     233  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     233  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      230     233  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     233  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     232  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      232     232  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     232  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       19      19  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      19  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19  swasted          
6 months    ki1000108-IRC              INDIA                          1                  0        0      14  swasted          
6 months    ki1000108-IRC              INDIA                          1                  1        0      14  swasted          
6 months    ki1000108-IRC              INDIA                          0                  0       14      14  swasted          
6 months    ki1000108-IRC              INDIA                          0                  1        0      14  swasted          
6 months    ki1000109-EE               PAKISTAN                       1                  0       42      48  swasted          
6 months    ki1000109-EE               PAKISTAN                       1                  1        1      48  swasted          
6 months    ki1000109-EE               PAKISTAN                       0                  0        5      48  swasted          
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      48  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      360     395  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       16     395  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       18     395  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        1     395  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      156     168  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       12     168  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      141     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        0     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      457     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        5     603  swasted          
6 months    ki1101329-Keneba           GAMBIA                         1                  0      577    1908  swasted          
6 months    ki1101329-Keneba           GAMBIA                         1                  1        9    1908  swasted          
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1299    1908  swasted          
6 months    ki1101329-Keneba           GAMBIA                         0                  1       23    1908  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      399     547  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        7     547  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      141     547  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0     547  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7497    9882  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      113    9882  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2247    9882  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1       25    9882  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3296    4275  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    4275  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      949    4275  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       11    4275  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       31     205  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     205  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      174     205  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     205  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       11     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      157     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        1     169  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        2     209  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     209  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      205     209  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     209  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        5     219  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     219  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      214     219  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     219  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                  0        3     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                  0      196     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                  1        2     201  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     216  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     216  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      216     216  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     216  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     202  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      202     202  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     202  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       19      19  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      19  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19  swasted          
24 months   ki1000108-IRC              INDIA                          1                  0        0      14  swasted          
24 months   ki1000108-IRC              INDIA                          1                  1        0      14  swasted          
24 months   ki1000108-IRC              INDIA                          0                  0       14      14  swasted          
24 months   ki1000108-IRC              INDIA                          0                  1        0      14  swasted          
24 months   ki1000109-EE               PAKISTAN                       1                  0       20      23  swasted          
24 months   ki1000109-EE               PAKISTAN                       1                  1        0      23  swasted          
24 months   ki1000109-EE               PAKISTAN                       0                  0        3      23  swasted          
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      23  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      135     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      435     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        7     579  swasted          
24 months   ki1101329-Keneba           GAMBIA                         1                  0      509    1514  swasted          
24 months   ki1101329-Keneba           GAMBIA                         1                  1        5    1514  swasted          
24 months   ki1101329-Keneba           GAMBIA                         0                  0      978    1514  swasted          
24 months   ki1101329-Keneba           GAMBIA                         0                  1       22    1514  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      349     469  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        6     469  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      105     469  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1        9     469  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       34     184  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0     184  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      150     184  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        0     184  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3742    5067  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      157    5067  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1130    5067  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       38    5067  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3186    4184  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       80    4184  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      892    4184  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       26    4184  swasted          


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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/68935b63-829e-43fc-8395-b90b775751e6/fe6fb6f1-0bcc-41ce-b2d7-588451d8004d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/68935b63-829e-43fc-8395-b90b775751e6/fe6fb6f1-0bcc-41ce-b2d7-588451d8004d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/68935b63-829e-43fc-8395-b90b775751e6/fe6fb6f1-0bcc-41ce-b2d7-588451d8004d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/68935b63-829e-43fc-8395-b90b775751e6/fe6fb6f1-0bcc-41ce-b2d7-588451d8004d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0866667   0.0606623   0.1126710
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0649943   0.0486729   0.0813157
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0205226   0.0172715   0.0237737
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0160813   0.0095196   0.0226429
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0105614   0.0056389   0.0154839
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0235294   0.0022038   0.0448550
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0153584   0.0053992   0.0253176
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0173979   0.0103480   0.0244478
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0148489   0.0119438   0.0177540
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0110035   0.0059211   0.0160859
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0057315   0.0020303   0.0094327
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0114583   0.0055150   0.0174016
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0097276   0.0012399   0.0182153
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0220000   0.0129056   0.0310944
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0169014   0.0034782   0.0303247
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0789474   0.0293943   0.1285004
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0402667   0.0320907   0.0484427
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0325342   0.0225036   0.0425649
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0244948   0.0180522   0.0309374
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0283224   0.0172314   0.0394135


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0723436   0.0584002   0.0862871
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0195458   0.0166489   0.0224427
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0130396   0.0073461   0.0187330
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0167715   0.0110080   0.0225350
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0139648   0.0114567   0.0164729
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0070175   0.0038738   0.0101612
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0178336   0.0111649   0.0245022
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0319829   0.0160416   0.0479243
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0384843   0.0318086   0.0451600
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0253346   0.0198022   0.0308670


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 0.7499342   0.5071041    1.109045
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7835872   0.5045466    1.216952
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.2278638   0.8025462    6.184538
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.1327954   0.5273112    2.433526
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7410336   0.4471686    1.228017
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.9991776   0.8669559    4.610051
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 2.2616000   0.8611947    5.939231
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 4.6710523   1.6973880   12.854297
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8079683   0.5573558    1.171268
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1562636   0.7177381    1.862721


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0143230   -0.0346212   0.0059751
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0009768   -0.0025970   0.0006434
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0024781   -0.0017309   0.0066872
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0014131   -0.0070414   0.0098676
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008841   -0.0022421   0.0004739
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0012860   -0.0002986   0.0028706
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0081059   -0.0001158   0.0163277
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0150815    0.0023717   0.0277913
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0017824   -0.0047867   0.0012218
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008398   -0.0020057   0.0036854


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.1979861   -0.5114710   0.0504808
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0499758   -0.1369658   0.0303585
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1900481   -0.1537838   0.4314168
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0842577   -0.5865784   0.4714513
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0633091   -0.1653128   0.0297658
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1832579   -0.1094585   0.3987449
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.4545324   -0.1981385   0.7516690
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.4715493    0.0254393   0.7134502
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0463156   -0.1249171   0.0267938
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0331489   -0.0869367   0.1399672
