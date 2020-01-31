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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        perdiar24    swasted   n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  --------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                 0       14    215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                 1        0    215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      123    215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1        4    215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                0       70    215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                1        4    215  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                 0       34     62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                 1        0     62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       26     62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        0     62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                0        2     62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                1        0     62  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0%                 0        5     45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0%                 1        0     45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0       31     45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1        0     45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          >5%                0        9     45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          >5%                1        0     45  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0%                 0        2     26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0%                 1        0     26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0       18     26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        1     26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                0        5     26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                1        0     26  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0%                 0       21    228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0%                 1        0    228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]           0       87    228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        0    228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           >5%                0      120    228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           >5%                1        0    228  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       42    112  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        0    112  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0       69    112  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        0    112  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        1    112  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    112  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        7    115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        0    115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       77    115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        0    115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       31    115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    115  swasted          
Birth       ki1000109-EE               PAKISTAN                       0%                 0      111    177  swasted          
Birth       ki1000109-EE               PAKISTAN                       0%                 1        4    177  swasted          
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]           0       60    177  swasted          
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]           1        2    177  swasted          
Birth       ki1000109-EE               PAKISTAN                       >5%                0        0    177  swasted          
Birth       ki1000109-EE               PAKISTAN                       >5%                1        0    177  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                 0       45    572  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                 1        1    572  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      304    572  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1       23    572  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                0      185    572  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                1       14    572  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                 0       54    532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                 1        1    532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      314    532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1        8    532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                0      151    532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                1        4    532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      132    707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1       12    707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      352    707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1       23    707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      176    707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1       12    707  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     0%                 0        5     19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     0%                 1        1     19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0        3     19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        0     19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     >5%                0       10     19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     >5%                1        0     19  swasted          
Birth       ki1114097-CONTENT          PERU                           0%                 0        0      2  swasted          
Birth       ki1114097-CONTENT          PERU                           0%                 1        0      2  swasted          
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]           0        1      2  swasted          
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]           1        0      2  swasted          
Birth       ki1114097-CONTENT          PERU                           >5%                0        1      2  swasted          
Birth       ki1114097-CONTENT          PERU                           >5%                1        0      2  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                 0       59   2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                 1        2   2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     2065   2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1       26   2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      241   2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                1        3   2396  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 0        6    241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 1        0    241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      140    241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1        2    241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                0       93    241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                1        0    241  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 0      106    209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0      101    209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        0    209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    209  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0%                 0        3    236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0%                 1        0    236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      186    236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1        5    236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          >5%                0       41    236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          >5%                1        1    236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0%                 0       14    236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0%                 1        0    236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      143    236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        0    236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                0       79    236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                1        0    236  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0%                 0        7    273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0%                 1        0    273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           0      109    273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        0    273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           >5%                0      157    273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           >5%                1        0    273  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       77    254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        1    254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      172    254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        2    254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        2    254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    254  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        9    247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        0    247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      177    247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        0    247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       61    247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    247  swasted          
6 months    ki1000109-EE               PAKISTAN                       0%                 0      249    375  swasted          
6 months    ki1000109-EE               PAKISTAN                       0%                 1        9    375  swasted          
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           0      113    375  swasted          
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           1        4    375  swasted          
6 months    ki1000109-EE               PAKISTAN                       >5%                0        0    375  swasted          
6 months    ki1000109-EE               PAKISTAN                       >5%                1        0    375  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 0       69    380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 1        5    380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           0       44    380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           1        2    380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                0      248    380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                1       12    380  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 0       15    537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 1        0    537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      335    537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1        4    537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                0      181    537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                1        2    537  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 0       12    603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 1        0    603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      403    603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1        5    603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                0      183    603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                1        0    603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      134    715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1        0    715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      386    715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1        0    715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      195    715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1        0    715  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 0       29    299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 1        0    299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           0       70    299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           1        0    299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                0      200    299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                1        0    299  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     0%                 0        2    243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     0%                 1        0    243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0      109    243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        2    243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     >5%                0      127    243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     >5%                1        3    243  swasted          
6 months    ki1114097-CONTENT          PERU                           0%                 0        6    215  swasted          
6 months    ki1114097-CONTENT          PERU                           0%                 1        0    215  swasted          
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           0      142    215  swasted          
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           1        0    215  swasted          
6 months    ki1114097-CONTENT          PERU                           >5%                0       67    215  swasted          
6 months    ki1114097-CONTENT          PERU                           >5%                1        0    215  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      156   4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 1        0   4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     4127   4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1       26   4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      517   4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                1        7   4833  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 0        6    212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 1        0    212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      130    212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1        0    212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                0       76    212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                1        0    212  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 0       76    169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       90    169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        1    169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    169  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0%                 0        3    227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0%                 1        0    227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      182    227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1        1    227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          >5%                0       40    227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          >5%                1        1    227  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0%                 0       12    228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0%                 1        0    228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      140    228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        0    228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                0       76    228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                1        0    228  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0%                 0        1    201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0%                 1        0    201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           0       83    201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        1    201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           >5%                0      115    201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           >5%                1        1    201  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       71    238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        0    238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      166    238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        0    238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        1    238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    238  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        6    214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        0    214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      156    214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        0    214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       52    214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    214  swasted          
24 months   ki1000109-EE               PAKISTAN                       0%                 0      112    168  swasted          
24 months   ki1000109-EE               PAKISTAN                       0%                 1        4    168  swasted          
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           0       52    168  swasted          
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           1        0    168  swasted          
24 months   ki1000109-EE               PAKISTAN                       >5%                0        0    168  swasted          
24 months   ki1000109-EE               PAKISTAN                       >5%                1        0    168  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 0        5    428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 1        0    428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      271    428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1        7    428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                0      142    428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                1        3    428  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 0        9    579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 1        0    579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      390    579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1        6    579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                0      171    579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                1        3    579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      121    514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1        2    514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      274    514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1        2    514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      115    514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1        0    514  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     0%                 0        3    243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     0%                 1        0    243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0      113    243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        1    243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     >5%                0      125    243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     >5%                1        1    243  swasted          
24 months   ki1114097-CONTENT          PERU                           0%                 0        4    164  swasted          
24 months   ki1114097-CONTENT          PERU                           0%                 1        0    164  swasted          
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0      108    164  swasted          
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1        0    164  swasted          
24 months   ki1114097-CONTENT          PERU                           >5%                0       52    164  swasted          
24 months   ki1114097-CONTENT          PERU                           >5%                1        0    164  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      158   4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1        6   4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     3973   4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      109   4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      475   4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1       14   4735  swasted          


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/9bd67b23-a39c-49ef-9282-755c808e4a48/06cac363-de91-480a-bcf4-4c1b7b5e5af6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9bd67b23-a39c-49ef-9282-755c808e4a48/06cac363-de91-480a-bcf4-4c1b7b5e5af6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9bd67b23-a39c-49ef-9282-755c808e4a48/06cac363-de91-480a-bcf4-4c1b7b5e5af6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9bd67b23-a39c-49ef-9282-755c808e4a48/06cac363-de91-480a-bcf4-4c1b7b5e5af6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0833333    0.0381593   0.1285074
Birth       ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0613333    0.0370312   0.0856354
Birth       ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0638298    0.0288622   0.0987974
24 months   kiGH5241-JiVitA-4       BANGLADESH   0%                   NA                0.0365854   -0.0066155   0.0797863
24 months   kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             NA                0.0267026    0.0210680   0.0323372
24 months   kiGH5241-JiVitA-4       BANGLADESH   >5%                  NA                0.0286299    0.0162138   0.0410459


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0272439   0.0220352   0.0324527


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.7360000   0.3760681   1.440420
Birth       ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.7659574   0.3544014   1.655442
24 months   kiGH5241-JiVitA-4       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             0%                0.7298710   0.2185755   2.437197
24 months   kiGH5241-JiVitA-4       BANGLADESH   >5%                  0%                0.7825494   0.2212828   2.767425


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0168553   -0.0561882   0.0224777
24 months   kiGH5241-JiVitA-4       BANGLADESH   0%                   NA                -0.0093414   -0.0514990   0.0328162


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.2535461   -1.004198   0.2159566
24 months   kiGH5241-JiVitA-4       BANGLADESH   0%                   NA                -0.3428815   -3.226024   0.5732796
