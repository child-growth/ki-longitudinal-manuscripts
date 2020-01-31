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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nrooms    wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+             0       11     201  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+             1        1     201  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0       94     201  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1       27     201  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              0       40     201  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              1        3     201  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              0       21     201  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              1        4     201  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         4+             0       28      57  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         4+             1        1      57  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        0      57  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        0      57  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         2              0        9      57  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         2              1        1      57  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         3              0       18      57  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         3              1        0      57  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          4+             0        2      39  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          4+             1        0      39  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1              0       14      39  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1              1        3      39  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          2              0       14      39  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          2              1        2      39  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          3              0        4      39  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          3              1        0      39  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          4+             0       14      25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          4+             1        1      25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1              0        6      25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        0      25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          2              0        2      25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          2              1        0      25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          3              0        1      25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          3              1        1      25  wasted           
Birth       ki0047075b-MAL-ED          PERU                           4+             0      101     210  wasted           
Birth       ki0047075b-MAL-ED          PERU                           4+             1        2     210  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1              0       12     210  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1              1        1     210  wasted           
Birth       ki0047075b-MAL-ED          PERU                           2              0       44     210  wasted           
Birth       ki0047075b-MAL-ED          PERU                           2              1        1     210  wasted           
Birth       ki0047075b-MAL-ED          PERU                           3              0       48     210  wasted           
Birth       ki0047075b-MAL-ED          PERU                           3              1        1     210  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+             0       59      95  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+             1        7      95  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0        4      95  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        1      95  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       12      95  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0      95  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       10      95  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        2      95  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             0       44     112  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             1        1     112  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        9     112  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     112  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       28     112  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     112  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       30     112  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        0     112  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             0        5      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             1        0      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0       31      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        4      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              0       21      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              1        6      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              0       18      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              1        1      86  wasted           
Birth       ki1000108-IRC              INDIA                          4+             0        9     341  wasted           
Birth       ki1000108-IRC              INDIA                          4+             1        5     341  wasted           
Birth       ki1000108-IRC              INDIA                          1              0      111     341  wasted           
Birth       ki1000108-IRC              INDIA                          1              1       45     341  wasted           
Birth       ki1000108-IRC              INDIA                          2              0      105     341  wasted           
Birth       ki1000108-IRC              INDIA                          2              1       35     341  wasted           
Birth       ki1000108-IRC              INDIA                          3              0       25     341  wasted           
Birth       ki1000108-IRC              INDIA                          3              1        6     341  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+             0       14     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+             1        4     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              0      306     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              1       82     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     2              0       58     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     2              1       21     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     3              0       37     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     3              1       10     532  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             0       70     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             1       20     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              0      255     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              1       83     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              0      138     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              1       43     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0       72     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              1       26     707  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          4+             0      228     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          4+             1       69     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          1              0       33     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1        9     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          2              0      112     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          2              1       23     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          3              0      136     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          3              1       31     641  wasted           
Birth       ki1114097-CONTENT          PERU                           4+             0        1       2  wasted           
Birth       ki1114097-CONTENT          PERU                           4+             1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           1              0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           1              1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           2              0        1       2  wasted           
Birth       ki1114097-CONTENT          PERU                           2              1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           3              0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           3              1        0       2  wasted           
Birth       ki1135781-COHORTS          INDIA                          4+             0       84    4454  wasted           
Birth       ki1135781-COHORTS          INDIA                          4+             1        6    4454  wasted           
Birth       ki1135781-COHORTS          INDIA                          1              0     2333    4454  wasted           
Birth       ki1135781-COHORTS          INDIA                          1              1      546    4454  wasted           
Birth       ki1135781-COHORTS          INDIA                          2              0     1121    4454  wasted           
Birth       ki1135781-COHORTS          INDIA                          2              1      207    4454  wasted           
Birth       ki1135781-COHORTS          INDIA                          3              0      141    4454  wasted           
Birth       ki1135781-COHORTS          INDIA                          3              1       16    4454  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+             0      593   17989  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+             1       69   17989  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0     9971   17989  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1     1199   17989  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0     4078   17989  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1      531   17989  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              0     1375   17989  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              1      173   17989  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+             0       96    2394  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+             1       15    2394  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0     1291    2394  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1      139    2394  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              0      554    2394  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              1       56    2394  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              0      215    2394  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              1       28    2394  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+             0       11     240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+             1        1     240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0      145     240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        5     240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              0       49     240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              1        1     240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              0       27     240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              1        1     240  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         4+             0      125     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         4+             1        1     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0        4     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         2              0       20     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         2              1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         3              0       59     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         3              1        0     209  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          4+             0       24     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          4+             1        1     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1              0       77     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1              1        7     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          2              0       74     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          2              1        4     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          3              0       41     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          3              1        7     235  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          4+             0      128     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          4+             1        3     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1              0       51     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        1     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          2              0       31     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          2              1        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          3              0       22     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          3              1        0     236  wasted           
6 months    ki0047075b-MAL-ED          PERU                           4+             0      139     270  wasted           
6 months    ki0047075b-MAL-ED          PERU                           4+             1        0     270  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1              0       19     270  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1              1        0     270  wasted           
6 months    ki0047075b-MAL-ED          PERU                           2              0       50     270  wasted           
6 months    ki0047075b-MAL-ED          PERU                           2              1        0     270  wasted           
6 months    ki0047075b-MAL-ED          PERU                           3              0       62     270  wasted           
6 months    ki0047075b-MAL-ED          PERU                           3              1        0     270  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+             0      186     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+             1        5     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       14     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       20     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        1     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       22     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        1     249  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             0      108     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       13     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       62     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       63     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        1     247  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+             0       12     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+             1        2     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0      171     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1       26     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              0       91     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              1       15     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              0       48     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              1        3     368  wasted           
6 months    ki1000108-IRC              INDIA                          4+             0       13     406  wasted           
6 months    ki1000108-IRC              INDIA                          4+             1        4     406  wasted           
6 months    ki1000108-IRC              INDIA                          1              0      163     406  wasted           
6 months    ki1000108-IRC              INDIA                          1              1       20     406  wasted           
6 months    ki1000108-IRC              INDIA                          2              0      149     406  wasted           
6 months    ki1000108-IRC              INDIA                          2              1       21     406  wasted           
6 months    ki1000108-IRC              INDIA                          3              0       28     406  wasted           
6 months    ki1000108-IRC              INDIA                          3              1        8     406  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+             0       19     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+             1        2     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      410     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1       20     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              0       92     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              1        2     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     3              0       57     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     3              1        1     603  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+             0       89     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+             1        2     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              0      325     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              1       14     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              0      180     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              1        4     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3              0      100     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3              1        1     715  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          4+             0      245     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          4+             1       23     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0       36     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        4     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          2              0      104     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          2              1       11     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          3              0      128     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          3              1       13     564  wasted           
6 months    ki1114097-CONTENT          PERU                           4+             0       78     215  wasted           
6 months    ki1114097-CONTENT          PERU                           4+             1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           1              0       44     215  wasted           
6 months    ki1114097-CONTENT          PERU                           1              1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           2              0       54     215  wasted           
6 months    ki1114097-CONTENT          PERU                           2              1        0     215  wasted           
6 months    ki1114097-CONTENT          PERU                           3              0       39     215  wasted           
6 months    ki1114097-CONTENT          PERU                           3              1        0     215  wasted           
6 months    ki1135781-COHORTS          INDIA                          4+             0       89    4955  wasted           
6 months    ki1135781-COHORTS          INDIA                          4+             1        4    4955  wasted           
6 months    ki1135781-COHORTS          INDIA                          1              0     2732    4955  wasted           
6 months    ki1135781-COHORTS          INDIA                          1              1      474    4955  wasted           
6 months    ki1135781-COHORTS          INDIA                          2              0     1313    4955  wasted           
6 months    ki1135781-COHORTS          INDIA                          2              1      161    4955  wasted           
6 months    ki1135781-COHORTS          INDIA                          3              0      171    4955  wasted           
6 months    ki1135781-COHORTS          INDIA                          3              1       11    4955  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+             0      709   16773  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+             1       33   16773  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0     8762   16773  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1      849   16773  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0     4332   16773  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1      400   16773  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              0     1553   16773  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              1      135   16773  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+             0      247    4827  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+             1       15    4827  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0     2674    4827  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1      177    4827  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              0     1161    4827  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              1       65    4827  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              0      470    4827  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              1       18    4827  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+             0        9     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+             1        2     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0      120     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1       14     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              0       37     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              1        3     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              0       25     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              1        2     212  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         4+             0      101     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         4+             1        3     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         2              0       16     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         2              1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         3              0       49     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         3              1        0     169  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          4+             0       24     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          4+             1        1     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1              0       75     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1              1        7     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          2              0       62     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          2              1       12     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          3              0       39     227  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          3              1        7     227  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          4+             0      125     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          4+             1        2     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1              0       45     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        3     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          2              0       31     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          2              1        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          3              0       22     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          3              1        0     228  wasted           
24 months   ki0047075b-MAL-ED          PERU                           4+             0      108     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           4+             1        2     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1              0       15     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1              1        1     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           2              0       32     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           2              1        0     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           3              0       42     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           3              1        1     201  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+             0      182     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+             1        1     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       13     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       19     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       23     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     238  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             0       98     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        9     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       50     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       53     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        4     214  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+             0       14     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+             1        0     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0      186     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1       15     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              0       99     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              1        7     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              0       50     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              1        1     372  wasted           
24 months   ki1000108-IRC              INDIA                          4+             0       16     407  wasted           
24 months   ki1000108-IRC              INDIA                          4+             1        1     407  wasted           
24 months   ki1000108-IRC              INDIA                          1              0      174     407  wasted           
24 months   ki1000108-IRC              INDIA                          1              1       10     407  wasted           
24 months   ki1000108-IRC              INDIA                          2              0      154     407  wasted           
24 months   ki1000108-IRC              INDIA                          2              1       16     407  wasted           
24 months   ki1000108-IRC              INDIA                          3              0       33     407  wasted           
24 months   ki1000108-IRC              INDIA                          3              1        3     407  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+             0       19     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+             1        3     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0      364     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       44     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              0       85     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              1        7     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     3              0       49     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     3              1        8     579  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+             0       75     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+             1        7     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              0      193     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              1       24     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              0      126     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              1       11     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3              0       75     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3              1        3     514  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          4+             0      184     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          4+             1       47     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0       31     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1        4     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          2              0       85     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          2              1       21     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          3              0       96     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          3              1       19     487  wasted           
24 months   ki1114097-CONTENT          PERU                           4+             0       63     164  wasted           
24 months   ki1114097-CONTENT          PERU                           4+             1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           1              0       30     164  wasted           
24 months   ki1114097-CONTENT          PERU                           1              1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           2              0       39     164  wasted           
24 months   ki1114097-CONTENT          PERU                           2              1        0     164  wasted           
24 months   ki1114097-CONTENT          PERU                           3              0       32     164  wasted           
24 months   ki1114097-CONTENT          PERU                           3              1        0     164  wasted           
24 months   ki1135781-COHORTS          INDIA                          4+             0       73    3719  wasted           
24 months   ki1135781-COHORTS          INDIA                          4+             1        2    3719  wasted           
24 months   ki1135781-COHORTS          INDIA                          1              0     2021    3719  wasted           
24 months   ki1135781-COHORTS          INDIA                          1              1      266    3719  wasted           
24 months   ki1135781-COHORTS          INDIA                          2              0     1123    3719  wasted           
24 months   ki1135781-COHORTS          INDIA                          2              1       84    3719  wasted           
24 months   ki1135781-COHORTS          INDIA                          3              0      146    3719  wasted           
24 months   ki1135781-COHORTS          INDIA                          3              1        4    3719  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+             0      310    8591  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+             1       55    8591  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0     3917    8591  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1     1119    8591  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0     1834    8591  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1      560    8591  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              0      658    8591  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              1      138    8591  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+             0      201    4730  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+             1       50    4730  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0     2228    4730  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1      553    4730  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              0      975    4730  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              1      233    4730  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              0      406    4730  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              1       84    4730  wasted           


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/38abbece-bccc-46d4-93a8-75c9a1f268c8/8052bd61-47d3-44f9-806a-a5e86b6139a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/38abbece-bccc-46d4-93a8-75c9a1f268c8/8052bd61-47d3-44f9-806a-a5e86b6139a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/38abbece-bccc-46d4-93a8-75c9a1f268c8/8052bd61-47d3-44f9-806a-a5e86b6139a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/38abbece-bccc-46d4-93a8-75c9a1f268c8/8052bd61-47d3-44f9-806a-a5e86b6139a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC           INDIA        4+                   NA                0.3571429    0.1057806   0.6085051
Birth       ki1000108-IRC           INDIA        1                    NA                0.2884615    0.2172637   0.3596594
Birth       ki1000108-IRC           INDIA        2                    NA                0.2500000    0.1781673   0.3218327
Birth       ki1000108-IRC           INDIA        3                    NA                0.1935484    0.0542683   0.3328284
Birth       ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.2222222    0.1362703   0.3081742
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2455621    0.1996434   0.2914808
Birth       ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.2375691    0.1755234   0.2996147
Birth       ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.2653061    0.1778341   0.3527782
Birth       ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.2323232    0.1842565   0.2803899
Birth       ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2142857    0.0900943   0.3384771
Birth       ki1113344-GMS-Nepal     NEPAL        2                    NA                0.1703704    0.1069017   0.2338390
Birth       ki1113344-GMS-Nepal     NEPAL        3                    NA                0.1856287    0.1266137   0.2446438
Birth       ki1135781-COHORTS       INDIA        4+                   NA                0.0666667    0.0250085   0.1083249
Birth       ki1135781-COHORTS       INDIA        1                    NA                0.1896492    0.1753277   0.2039707
Birth       ki1135781-COHORTS       INDIA        2                    NA                0.1558735    0.1363621   0.1753849
Birth       ki1135781-COHORTS       INDIA        3                    NA                0.1019108    0.0545830   0.1492387
Birth       kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.1042296    0.0784755   0.1299837
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1073411    0.1006661   0.1140161
Birth       kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.1152094    0.1058557   0.1245630
Birth       kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.1117571    0.0942243   0.1292899
Birth       kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.1351351    0.0502340   0.2200362
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0972028    0.0768249   0.1175807
Birth       kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0918033    0.0689534   0.1146532
Birth       kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1152263    0.0617741   0.1686785
6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0444744    0.0273180   0.0616308
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0883363    0.0821418   0.0945308
6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0845309    0.0758829   0.0931788
6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0799763    0.0651557   0.0947969
6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.0572519   -0.0119893   0.1264931
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0620835    0.0501886   0.0739783
6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0530179    0.0399295   0.0661064
6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.0368853    0.0189604   0.0548101
24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.1506849    0.1138442   0.1875257
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.2222002    0.2092614   0.2351389
24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.2339181    0.2152262   0.2526101
24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.1733668    0.1423273   0.2044063
24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.1992032    0.1231897   0.2752167
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1988493    0.1815956   0.2161031
24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.1928808    0.1679035   0.2178581
24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1714286    0.1337363   0.2091209


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        NA                   NA                0.2668622   0.2198462   0.3138781
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2059282   0.1745993   0.2372572
Birth       ki1135781-COHORTS       INDIA        NA                   NA                0.1740009   0.1628660   0.1851358
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1096225   0.1044939   0.1147512
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0994152   0.0840401   0.1147903
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0844810   0.0796719   0.0892901
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0569712   0.0481278   0.0658146
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2179025   0.2080266   0.2277783
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1945032   0.1812962   0.2077102


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC           INDIA        4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC           INDIA        1                    4+                0.8076923   0.3831181   1.702783
Birth       ki1000108-IRC           INDIA        2                    4+                0.7000000   0.3272990   1.497102
Birth       ki1000108-IRC           INDIA        3                    4+                0.5419355   0.1980599   1.482855
Birth       ki1017093c-NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                1.1050296   0.7191091   1.698060
Birth       ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                1.0690608   0.6703726   1.704859
Birth       ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                1.1938776   0.7181829   1.984653
Birth       ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal     NEPAL        1                    4+                0.9223602   0.4984751   1.706702
Birth       ki1113344-GMS-Nepal     NEPAL        2                    4+                0.7333333   0.4788895   1.122968
Birth       ki1113344-GMS-Nepal     NEPAL        3                    4+                0.7990107   0.5467877   1.167579
Birth       ki1135781-COHORTS       INDIA        4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA        1                    4+                2.8447378   1.5159635   5.338211
Birth       ki1135781-COHORTS       INDIA        2                    4+                2.3381024   1.2362126   4.422154
Birth       ki1135781-COHORTS       INDIA        3                    4+                1.5286624   0.7017657   3.329899
Birth       kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.0298522   0.7980639   1.328961
Birth       kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.1053421   0.8486397   1.439694
Birth       kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.0722203   0.8059388   1.426481
Birth       kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.7193007   0.3727940   1.387880
Birth       kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.6793443   0.3462413   1.332911
Birth       kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.8526749   0.3948649   1.841274
6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.9862278   1.3419936   2.939732
6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.9006634   1.2836959   2.814157
6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.7982550   1.1721506   2.758793
6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    4+                1.0843914   0.3187896   3.688654
6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.9260468   0.2692828   3.184617
6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.6442626   0.1746252   2.376944
24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.4746011   1.1484542   1.893369
24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.5523658   1.1949087   2.016756
24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.1505254   0.8480451   1.560894
24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.9982237   0.6738247   1.478798
24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.9682616   0.6475913   1.447719
24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.8605714   0.5569969   1.329600


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC           INDIA        4+                   NA                -0.0902807   -0.3356486   0.1550872
Birth       ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0210592   -0.0596162   0.1017347
Birth       ki1113344-GMS-Nepal     NEPAL        4+                   NA                -0.0263950   -0.0603201   0.0075301
Birth       ki1135781-COHORTS       INDIA        4+                   NA                 0.1073342    0.0652317   0.1494368
Birth       kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0053929   -0.0199892   0.0307751
Birth       kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0357199   -0.1174548   0.0460150
6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0400066    0.0230853   0.0569279
6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0002807   -0.0662596   0.0656982
24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0672175    0.0305340   0.1039010
24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0047000   -0.0778065   0.0684065


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC           INDIA        4+                   NA                -0.3383046   -1.6601876   0.3267170
Birth       ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0865633   -0.3131281   0.3645962
Birth       ki1113344-GMS-Nepal     NEPAL        4+                   NA                -0.1281757   -0.3049988   0.0246885
Birth       ki1135781-COHORTS       INDIA        4+                   NA                 0.6168602    0.2862315   0.7943365
Birth       kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0491955   -0.2129057   0.2546584
Birth       kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.3593005   -1.4804606   0.2550989
6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.4735575    0.2308367   0.6396842
6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0049271   -2.1807298   0.6825010
24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.3084753    0.1192449   0.4570495
24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0241642   -0.4779561   0.2902953
