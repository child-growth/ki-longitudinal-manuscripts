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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        perdiar24    wasted   n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                0       13    215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                1        1    215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          0      101    215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          1       26    215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%               0       65    215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%               1        9    215  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                0       34     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                1        0     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          0       24     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          1        2     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               0        2     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               1        0     62  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0%                0        5     45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0%                1        0     45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]          0       28     45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]          1        3     45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          >5%               0        7     45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          >5%               1        2     45  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0%                0        2     26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0%                1        0     26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          0       18     26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          1        1     26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          >5%               0        4     26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          >5%               1        1     26  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0%                0       21    228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0%                1        0    228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]          0       87    228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]          1        0    228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           >5%               0      115    228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           >5%               1        5    228  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                0       38    112  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                1        4    112  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          0       63    112  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          1        6    112  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               0        1    112  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1        0    112  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                0        7    115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                1        0    115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       76    115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        1    115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               0       31    115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               1        0    115  wasted           
Birth       ki1000109-EE               PAKISTAN                       0%                0      100    177  wasted           
Birth       ki1000109-EE               PAKISTAN                       0%                1       15    177  wasted           
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          0       55    177  wasted           
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          1        7    177  wasted           
Birth       ki1000109-EE               PAKISTAN                       >5%               0        0    177  wasted           
Birth       ki1000109-EE               PAKISTAN                       >5%               1        0    177  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                0       34    572  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                1       12    572  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          0      235    572  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          1       92    572  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%               0      135    572  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%               1       64    572  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                0       41    532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                1       14    532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]          0      259    532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]          1       63    532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%               0      115    532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%               1       40    532  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                0      102    707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                1       42    707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          0      294    707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          1       81    707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%               0      139    707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%               1       49    707  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     0%                0        4     19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     0%                1        2     19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0        3     19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          1        0     19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     >5%               0        8     19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     >5%               1        2     19  wasted           
Birth       ki1114097-CONTENT          PERU                           0%                0        0      2  wasted           
Birth       ki1114097-CONTENT          PERU                           0%                1        0      2  wasted           
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          0        1      2  wasted           
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1        0      2  wasted           
Birth       ki1114097-CONTENT          PERU                           >5%               0        1      2  wasted           
Birth       ki1114097-CONTENT          PERU                           >5%               1        0      2  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                0       53   2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                1        8   2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          0     1885   2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          1      206   2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%               0      219   2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%               1       25   2396  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                0        6    241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                1        0    241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          0      136    241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          1        6    241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%               0       91    241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%               1        2    241  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                0      106    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                1        0    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          0      100    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          1        1    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               0        2    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               1        0    209  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0%                0        3    236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0%                1        0    236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]          0      177    236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]          1       14    236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          >5%               0       37    236  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          >5%               1        5    236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0%                0       13    236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0%                1        1    236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          0      140    236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          1        3    236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          >5%               0       79    236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          >5%               1        0    236  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0%                0        7    273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0%                1        0    273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]          0      109    273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]          1        0    273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           >5%               0      157    273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           >5%               1        0    273  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                0       76    254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                1        2    254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          0      169    254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          1        5    254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               0        2    254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1        0    254  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                0        8    247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                1        1    247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0      177    247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0    247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               0       61    247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               1        0    247  wasted           
6 months    ki1000109-EE               PAKISTAN                       0%                0      223    375  wasted           
6 months    ki1000109-EE               PAKISTAN                       0%                1       35    375  wasted           
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]          0      105    375  wasted           
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]          1       12    375  wasted           
6 months    ki1000109-EE               PAKISTAN                       >5%               0        0    375  wasted           
6 months    ki1000109-EE               PAKISTAN                       >5%               1        0    375  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                0       61    380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                1       13    380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]          0       38    380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]          1        8    380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%               0      212    380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%               1       48    380  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                0       15    537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                1        0    537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          0      316    537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          1       23    537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%               0      171    537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%               1       12    537  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                0       12    603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                1        0    603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]          0      390    603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]          1       18    603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%               0      176    603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%               1        7    603  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                0      130    715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                1        4    715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          0      379    715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          1        7    715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%               0      185    715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%               1       10    715  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                0       28    299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                1        1    299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]          0       70    299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]          1        0    299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%               0      197    299  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%               1        3    299  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     0%                0        2    243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     0%                1        0    243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0      100    243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]          1       11    243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     >5%               0      120    243  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     >5%               1       10    243  wasted           
6 months    ki1114097-CONTENT          PERU                           0%                0        6    215  wasted           
6 months    ki1114097-CONTENT          PERU                           0%                1        0    215  wasted           
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]          0      142    215  wasted           
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]          1        0    215  wasted           
6 months    ki1114097-CONTENT          PERU                           >5%               0       67    215  wasted           
6 months    ki1114097-CONTENT          PERU                           >5%               1        0    215  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                0      149   4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                1        7   4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          0     3928   4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          1      225   4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%               0      481   4833  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%               1       43   4833  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                0        5    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                1        1    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          0      114    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]          1       16    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%               0       72    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%               1        4    212  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                0       75    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                1        1    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          0       89    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]          1        2    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               0        2    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               1        0    169  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0%                0        3    227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0%                1        0    227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]          0      160    227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]          1       23    227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          >5%               0       37    227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          >5%               1        4    227  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0%                0       12    228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0%                1        0    228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          0      138    228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]          1        2    228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          >5%               0       73    228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          >5%               1        3    228  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0%                0        1    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0%                1        0    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]          0       82    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]          1        2    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           >5%               0      114    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           >5%               1        2    201  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                0       71    238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                1        0    238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          0      165    238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]          1        1    238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               0        1    238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1        0    238  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                0        6    214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                1        0    214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0      154    214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        2    214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               0       50    214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               1        2    214  wasted           
24 months   ki1000109-EE               PAKISTAN                       0%                0       94    168  wasted           
24 months   ki1000109-EE               PAKISTAN                       0%                1       22    168  wasted           
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]          0       44    168  wasted           
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]          1        8    168  wasted           
24 months   ki1000109-EE               PAKISTAN                       >5%               0        0    168  wasted           
24 months   ki1000109-EE               PAKISTAN                       >5%               1        0    168  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                0        4    428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                1        1    428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          0      239    428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          1       39    428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%               0      132    428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%               1       13    428  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                0        9    579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                1        0    579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]          0      350    579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]          1       46    579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%               0      158    579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%               1       16    579  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                0      112    514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                1       11    514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          0      252    514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]          1       24    514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%               0      105    514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%               1       10    514  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     0%                0        3    243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     0%                1        0    243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0       99    243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]          1       15    243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     >5%               0      116    243  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     >5%               1       10    243  wasted           
24 months   ki1114097-CONTENT          PERU                           0%                0        4    164  wasted           
24 months   ki1114097-CONTENT          PERU                           0%                1        0    164  wasted           
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]          0      108    164  wasted           
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]          1        0    164  wasted           
24 months   ki1114097-CONTENT          PERU                           >5%               0       52    164  wasted           
24 months   ki1114097-CONTENT          PERU                           >5%               1        0    164  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                0      129   4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                1       35   4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          0     3293   4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]          1      789   4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%               0      393   4735  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%               1       96   4735  wasted           


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
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d5f0961b-6679-4024-9b4d-56fb8ec31863/e33cefda-6002-490e-8801-90dd1e34f061/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d5f0961b-6679-4024-9b4d-56fb8ec31863/e33cefda-6002-490e-8801-90dd1e34f061/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d5f0961b-6679-4024-9b4d-56fb8ec31863/e33cefda-6002-490e-8801-90dd1e34f061/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d5f0961b-6679-4024-9b4d-56fb8ec31863/e33cefda-6002-490e-8801-90dd1e34f061/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1017093-NIH-Birth        BANGLADESH   0%                   NA                0.2608696    0.1338644   0.3878747
Birth       ki1017093-NIH-Birth        BANGLADESH   (0%, 5%]             NA                0.2813456    0.2325664   0.3301247
Birth       ki1017093-NIH-Birth        BANGLADESH   >5%                  NA                0.3216080    0.2566541   0.3865620
Birth       ki1017093b-PROVIDE         BANGLADESH   0%                   NA                0.2545455    0.1393147   0.3697762
Birth       ki1017093b-PROVIDE         BANGLADESH   (0%, 5%]             NA                0.1956522    0.1522818   0.2390225
Birth       ki1017093b-PROVIDE         BANGLADESH   >5%                  NA                0.2580645    0.1891139   0.3270151
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                0.2916667    0.2173756   0.3659577
Birth       ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.2160000    0.1743203   0.2576797
Birth       ki1017093c-NIH-Crypto      BANGLADESH   >5%                  NA                0.2606383    0.1978434   0.3234332
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.1311475   -0.0090976   0.2713927
Birth       kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0985175    0.0826046   0.1144304
Birth       kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.1024590    0.0470775   0.1578405
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                0.1756757    0.0888578   0.2624936
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             NA                0.1739130    0.0642348   0.2835912
6 months    ki1000304b-SAS-FoodSuppl   INDIA        >5%                  NA                0.1846154    0.1373929   0.2318379
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.0448718    0.0095437   0.0801999
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0541777    0.0449929   0.0633625
6 months    kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.0820611    0.0486177   0.1155045
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                0.0894309    0.0389510   0.1399108
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.0869565    0.0536819   0.1202312
24 months   ki1017093c-NIH-Crypto      BANGLADESH   >5%                  NA                0.0869565    0.0354077   0.1385054
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.2134146    0.1402654   0.2865638
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.1932876    0.1793181   0.2072571
24 months   kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.1963190    0.1502014   0.2424366


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2937063   0.2563487   0.3310639
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0997496   0.0843744   0.1151247
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1815789   0.1427684   0.2203895
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0569005   0.0480577   0.0657432
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1942978   0.1810880   0.2075076


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093-NIH-Birth        BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH   (0%, 5%]             0%                1.0784913   0.6432380   1.808263
Birth       ki1017093-NIH-Birth        BANGLADESH   >5%                  0%                1.2328308   0.7277703   2.088395
Birth       ki1017093b-PROVIDE         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH   (0%, 5%]             0%                0.7686335   0.4643146   1.272408
Birth       ki1017093b-PROVIDE         BANGLADESH   >5%                  0%                1.0138249   0.5993384   1.714959
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             0%                0.7405714   0.5380071   1.019403
Birth       ki1017093c-NIH-Crypto      BANGLADESH   >5%                  0%                0.8936170   0.6293401   1.268871
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                0.7511956   0.2542327   2.219600
Birth       kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                0.7812500   0.2381172   2.563241
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             0%                0.9899666   0.4442801   2.205892
6 months    ki1000304b-SAS-FoodSuppl   INDIA        >5%                  0%                1.0508876   0.6024010   1.833272
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                1.2073888   0.5378249   2.710525
6 months    kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                1.8287895   0.7794357   4.290888
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             0%                0.9723320   0.4916462   1.922988
24 months   ki1017093c-NIH-Crypto      BANGLADESH   >5%                  0%                0.9723320   0.4288637   2.204499
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                0.9056905   0.6374341   1.286839
24 months   kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                0.9198948   0.6069822   1.394121


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth        BANGLADESH   0%                   NA                 0.0328367   -0.0893579   0.1550313
Birth       ki1017093b-PROVIDE         BANGLADESH   0%                   NA                -0.0346206   -0.1431277   0.0738864
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                -0.0483852   -0.1137503   0.0169799
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0313980   -0.1689018   0.1061059
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                 0.0059033   -0.0722505   0.0840570
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                 0.0120287   -0.0230586   0.0471160
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                -0.0018823   -0.0457780   0.0420135
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0191169   -0.0910834   0.0528497


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth        BANGLADESH   0%                   NA                 0.1118012   -0.4187573   0.4439521
Birth       ki1017093b-PROVIDE         BANGLADESH   0%                   NA                -0.1574204   -0.7722994   0.2441334
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                -0.1988857   -0.4996971   0.0415886
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.3147678   -2.7366393   0.5373880
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                 0.0325108   -0.5095190   0.3799115
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                 0.2113986   -0.7184872   0.6381165
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                -0.0214995   -0.6687540   0.3747063
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0983894   -0.5389858   0.2160686
