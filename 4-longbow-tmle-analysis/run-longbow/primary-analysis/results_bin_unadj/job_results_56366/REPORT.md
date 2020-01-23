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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nrooms    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+              0       12     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+              1        0     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0      113     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        8     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               0       43     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               1        0     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               0       25     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               1        0     201  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              0       29      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              1        0      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        0      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         2               0       10      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         2               1        0      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         3               0       18      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         3               1        0      57  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          4+              0        2      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          4+              1        0      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1               0       17      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          2               0       16      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          2               1        0      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          3               0        4      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          3               1        0      39  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          4+              0       14      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          4+              1        1      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        6      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          2               0        2      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          2               1        0      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          3               0        2      25  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          3               1        0      25  swasted          
Birth       ki0047075b-MAL-ED          PERU                           4+              0      103     210  swasted          
Birth       ki0047075b-MAL-ED          PERU                           4+              1        0     210  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1               0       13     210  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     210  swasted          
Birth       ki0047075b-MAL-ED          PERU                           2               0       45     210  swasted          
Birth       ki0047075b-MAL-ED          PERU                           2               1        0     210  swasted          
Birth       ki0047075b-MAL-ED          PERU                           3               0       49     210  swasted          
Birth       ki0047075b-MAL-ED          PERU                           3               1        0     210  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0       66      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1        0      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        5      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       12      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       12      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        0      95  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       45     112  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        0     112  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     112  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     112  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       28     112  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     112  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       30     112  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     112  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              0        5      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       34      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               0       27      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               0       19      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               1        0      86  swasted          
Birth       ki1000108-IRC              INDIA                          4+              0       11     341  swasted          
Birth       ki1000108-IRC              INDIA                          4+              1        3     341  swasted          
Birth       ki1000108-IRC              INDIA                          1               0      128     341  swasted          
Birth       ki1000108-IRC              INDIA                          1               1       28     341  swasted          
Birth       ki1000108-IRC              INDIA                          2               0      123     341  swasted          
Birth       ki1000108-IRC              INDIA                          2               1       17     341  swasted          
Birth       ki1000108-IRC              INDIA                          3               0       26     341  swasted          
Birth       ki1000108-IRC              INDIA                          3               1        5     341  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+              0       17     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+              1        1     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0      380     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1        8     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     2               0       78     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     2               1        1     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     3               0       44     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     3               1        3     532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       86     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        4     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0      313     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1       25     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               0      171     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               1       10     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3               0       90     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3               1        8     707  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          4+              0      284     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          4+              1       13     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0       41     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1        1     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          2               0      131     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          2               1        4     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          3               0      158     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          3               1        9     641  swasted          
Birth       ki1114097-CONTENT          PERU                           4+              0        1       2  swasted          
Birth       ki1114097-CONTENT          PERU                           4+              1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           1               0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           1               1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           2               0        1       2  swasted          
Birth       ki1114097-CONTENT          PERU                           2               1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           3               0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           3               1        0       2  swasted          
Birth       ki1135781-COHORTS          INDIA                          4+              0       87    4454  swasted          
Birth       ki1135781-COHORTS          INDIA                          4+              1        3    4454  swasted          
Birth       ki1135781-COHORTS          INDIA                          1               0     2733    4454  swasted          
Birth       ki1135781-COHORTS          INDIA                          1               1      146    4454  swasted          
Birth       ki1135781-COHORTS          INDIA                          2               0     1266    4454  swasted          
Birth       ki1135781-COHORTS          INDIA                          2               1       62    4454  swasted          
Birth       ki1135781-COHORTS          INDIA                          3               0      154    4454  swasted          
Birth       ki1135781-COHORTS          INDIA                          3               1        3    4454  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              0      646   17989  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              1       16   17989  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0    10949   17989  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      221   17989  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     4521   17989  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1       88   17989  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               0     1524   17989  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               1       24   17989  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              0      108    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              1        3    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     1411    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1       19    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               0      602    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               1        8    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               0      242    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               1        1    2394  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              0       12     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              1        0     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      149     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        1     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               0       50     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               1        0     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               0       27     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               1        1     240  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         4+              0      126     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         4+              1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        4     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         2               0       20     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         2               1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         3               0       59     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         3               1        0     209  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          4+              0       25     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          4+              1        0     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1               0       82     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1               1        2     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          2               0       76     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          2               1        2     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          3               0       46     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          3               1        2     235  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          4+              0      131     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          4+              1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       52     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          2               0       31     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          2               1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          3               0       22     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          3               1        0     236  swasted          
6 months    ki0047075b-MAL-ED          PERU                           4+              0      139     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           4+              1        0     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1               0       19     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           2               0       50     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           2               1        0     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           3               0       62     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           3               1        0     270  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      189     249  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1        2     249  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       14     249  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     249  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       21     249  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     249  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       22     249  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        1     249  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0      108     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       13     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       62     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       64     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     247  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              0       14     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        0     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      189     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        8     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               0      102     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               1        4     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               0       51     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               1        0     368  swasted          
6 months    ki1000108-IRC              INDIA                          4+              0       15     406  swasted          
6 months    ki1000108-IRC              INDIA                          4+              1        2     406  swasted          
6 months    ki1000108-IRC              INDIA                          1               0      174     406  swasted          
6 months    ki1000108-IRC              INDIA                          1               1        9     406  swasted          
6 months    ki1000108-IRC              INDIA                          2               0      164     406  swasted          
6 months    ki1000108-IRC              INDIA                          2               1        6     406  swasted          
6 months    ki1000108-IRC              INDIA                          3               0       32     406  swasted          
6 months    ki1000108-IRC              INDIA                          3               1        4     406  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              0       21     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              1        0     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      426     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        4     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0       93     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1        1     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               0       58     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               1        0     603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       91     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      339     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               0      184     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               0      101     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               1        0     715  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              0      265     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              1        3     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       39     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        1     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      113     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        2     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0      140     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          3               1        1     564  swasted          
6 months    ki1114097-CONTENT          PERU                           4+              0       78     215  swasted          
6 months    ki1114097-CONTENT          PERU                           4+              1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           1               0       44     215  swasted          
6 months    ki1114097-CONTENT          PERU                           1               1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           2               0       54     215  swasted          
6 months    ki1114097-CONTENT          PERU                           2               1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           3               0       39     215  swasted          
6 months    ki1114097-CONTENT          PERU                           3               1        0     215  swasted          
6 months    ki1135781-COHORTS          INDIA                          4+              0       93    4955  swasted          
6 months    ki1135781-COHORTS          INDIA                          4+              1        0    4955  swasted          
6 months    ki1135781-COHORTS          INDIA                          1               0     3090    4955  swasted          
6 months    ki1135781-COHORTS          INDIA                          1               1      116    4955  swasted          
6 months    ki1135781-COHORTS          INDIA                          2               0     1443    4955  swasted          
6 months    ki1135781-COHORTS          INDIA                          2               1       31    4955  swasted          
6 months    ki1135781-COHORTS          INDIA                          3               0      178    4955  swasted          
6 months    ki1135781-COHORTS          INDIA                          3               1        4    4955  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              0      734   16773  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              1        8   16773  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     9484   16773  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      127   16773  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     4655   16773  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1       77   16773  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               0     1671   16773  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               1       17   16773  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              0      260    4827  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              1        2    4827  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     2829    4827  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       22    4827  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               0     1217    4827  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               1        9    4827  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               0      488    4827  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               1        0    4827  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              0       11     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0      134     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       40     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       27     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              0      103     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              1        1     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       16     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       49     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        0     169  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          4+              0       24     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          4+              1        1     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1               0       82     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          2               0       74     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          2               1        0     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          3               0       45     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          3               1        1     227  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          4+              0      127     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          4+              1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       48     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          2               0       31     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          2               1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          3               0       22     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          3               1        0     228  swasted          
24 months   ki0047075b-MAL-ED          PERU                           4+              0      109     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           4+              1        1     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1               0       15     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1               1        1     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           2               0       32     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           2               1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           3               0       43     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           3               1        0     201  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      183     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       13     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       19     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       23     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        0     238  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       98     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       50     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       57     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     214  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              0       14     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0      199     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0      105     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1        1     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       51     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1        0     372  swasted          
24 months   ki1000108-IRC              INDIA                          4+              0       17     407  swasted          
24 months   ki1000108-IRC              INDIA                          4+              1        0     407  swasted          
24 months   ki1000108-IRC              INDIA                          1               0      182     407  swasted          
24 months   ki1000108-IRC              INDIA                          1               1        2     407  swasted          
24 months   ki1000108-IRC              INDIA                          2               0      169     407  swasted          
24 months   ki1000108-IRC              INDIA                          2               1        1     407  swasted          
24 months   ki1000108-IRC              INDIA                          3               0       35     407  swasted          
24 months   ki1000108-IRC              INDIA                          3               1        1     407  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              0       22     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              1        0     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      400     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        8     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0       91     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1        1     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               0       57     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               1        0     579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       82     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        0     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      217     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               0      133     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               1        4     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               0       78     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               1        0     514  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              0      224     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              1        7     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       33     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        2     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      103     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1        3     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0      112     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          3               1        3     487  swasted          
24 months   ki1114097-CONTENT          PERU                           4+              0       63     164  swasted          
24 months   ki1114097-CONTENT          PERU                           4+              1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           1               0       30     164  swasted          
24 months   ki1114097-CONTENT          PERU                           1               1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           2               0       39     164  swasted          
24 months   ki1114097-CONTENT          PERU                           2               1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           3               0       32     164  swasted          
24 months   ki1114097-CONTENT          PERU                           3               1        0     164  swasted          
24 months   ki1135781-COHORTS          INDIA                          4+              0       75    3719  swasted          
24 months   ki1135781-COHORTS          INDIA                          4+              1        0    3719  swasted          
24 months   ki1135781-COHORTS          INDIA                          1               0     2254    3719  swasted          
24 months   ki1135781-COHORTS          INDIA                          1               1       33    3719  swasted          
24 months   ki1135781-COHORTS          INDIA                          2               0     1200    3719  swasted          
24 months   ki1135781-COHORTS          INDIA                          2               1        7    3719  swasted          
24 months   ki1135781-COHORTS          INDIA                          3               0      149    3719  swasted          
24 months   ki1135781-COHORTS          INDIA                          3               1        1    3719  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              0      354    8591  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              1       11    8591  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     4829    8591  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      207    8591  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     2300    8591  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1       94    8591  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0      776    8591  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1       20    8591  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              0      248    4730  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              1        3    4730  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2698    4730  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1       83    4730  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0     1178    4730  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1       30    4730  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0      477    4730  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1       13    4730  swasted          


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/b02e2db8-d776-4bea-b91a-45913f6b2883/6ab142fc-98aa-4766-82a2-6846ff838804/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b02e2db8-d776-4bea-b91a-45913f6b2883/6ab142fc-98aa-4766-82a2-6846ff838804/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b02e2db8-d776-4bea-b91a-45913f6b2883/6ab142fc-98aa-4766-82a2-6846ff838804/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b02e2db8-d776-4bea-b91a-45913f6b2883/6ab142fc-98aa-4766-82a2-6846ff838804/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                0.0241692    0.0091451   0.0391933
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0197851    0.0166798   0.0228904
Birth       kiGH5241-JiVitA-3   BANGLADESH   2                    NA                0.0190931    0.0147853   0.0234008
Birth       kiGH5241-JiVitA-3   BANGLADESH   3                    NA                0.0155039    0.0085106   0.0224972
6 months    kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                0.0107817   -0.0006785   0.0222418
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0132140    0.0106813   0.0157468
6 months    kiGH5241-JiVitA-3   BANGLADESH   2                    NA                0.0162722    0.0120559   0.0204885
6 months    kiGH5241-JiVitA-3   BANGLADESH   3                    NA                0.0100711    0.0047150   0.0154272
24 months   kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                0.0301370    0.0138564   0.0464175
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0411041    0.0351631   0.0470450
24 months   kiGH5241-JiVitA-3   BANGLADESH   2                    NA                0.0392648    0.0314239   0.0471057
24 months   kiGH5241-JiVitA-3   BANGLADESH   3                    NA                0.0251256    0.0128901   0.0373612


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0194007   0.0169896   0.0218118
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0136529   0.0115801   0.0157257
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0386451   0.0343181   0.0429721


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    4+                0.8186101   0.4345414   1.542137
Birth       kiGH5241-JiVitA-3   BANGLADESH   2                    4+                0.7899761   0.4058901   1.537516
Birth       kiGH5241-JiVitA-3   BANGLADESH   3                    4+                0.6414730   0.2937590   1.400766
6 months    kiGH5241-JiVitA-3   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    4+                1.2256009   0.4147552   3.621648
6 months    kiGH5241-JiVitA-3   BANGLADESH   2                    4+                1.5092456   0.5078341   4.485367
6 months    kiGH5241-JiVitA-3   BANGLADESH   3                    4+                0.9340936   0.2825810   3.087720
24 months   kiGH5241-JiVitA-3   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    4+                1.3639071   0.7779541   2.391198
24 months   kiGH5241-JiVitA-3   BANGLADESH   2                    4+                1.3028784   0.7376000   2.301372
24 months   kiGH5241-JiVitA-3   BANGLADESH   3                    4+                0.8337140   0.3978987   1.746874


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                -0.0047684   -0.0193744   0.0098375
6 months    kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                 0.0028712   -0.0082785   0.0140209
24 months   kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                 0.0085081   -0.0076717   0.0246879


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                -0.2457864   -1.2757142   0.3180235
6 months    kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                 0.2103014   -1.2282095   0.7201233
24 months   kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                 0.2201601   -0.3306197   0.5429571
