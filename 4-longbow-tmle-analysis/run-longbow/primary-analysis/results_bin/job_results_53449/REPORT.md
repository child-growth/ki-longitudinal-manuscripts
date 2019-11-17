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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nrooms    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+               0       12     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+               1        0     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0      125     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        5     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                0       45     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                1        1     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                0       25     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                1        0     213
Birth       ki0047075b-MAL-ED          BRAZIL                         4+               0       29      60
Birth       ki0047075b-MAL-ED          BRAZIL                         4+               1        1      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0      60
Birth       ki0047075b-MAL-ED          BRAZIL                         2                0       10      60
Birth       ki0047075b-MAL-ED          BRAZIL                         2                1        0      60
Birth       ki0047075b-MAL-ED          BRAZIL                         3                0       18      60
Birth       ki0047075b-MAL-ED          BRAZIL                         3                1        2      60
Birth       ki0047075b-MAL-ED          INDIA                          4+               0        2      41
Birth       ki0047075b-MAL-ED          INDIA                          4+               1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          1                0       17      41
Birth       ki0047075b-MAL-ED          INDIA                          1                1        1      41
Birth       ki0047075b-MAL-ED          INDIA                          2                0       16      41
Birth       ki0047075b-MAL-ED          INDIA                          2                1        1      41
Birth       ki0047075b-MAL-ED          INDIA                          3                0        4      41
Birth       ki0047075b-MAL-ED          INDIA                          3                1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          4+               0       15      26
Birth       ki0047075b-MAL-ED          NEPAL                          4+               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        6      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          2                0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          2                1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          3                0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          3                1        0      26
Birth       ki0047075b-MAL-ED          PERU                           4+               0      103     215
Birth       ki0047075b-MAL-ED          PERU                           4+               1        4     215
Birth       ki0047075b-MAL-ED          PERU                           1                0       13     215
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     215
Birth       ki0047075b-MAL-ED          PERU                           2                0       45     215
Birth       ki0047075b-MAL-ED          PERU                           2                1        0     215
Birth       ki0047075b-MAL-ED          PERU                           3                0       50     215
Birth       ki0047075b-MAL-ED          PERU                           3                1        0     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+               0       66      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+               1        1      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        5      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       12      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       12      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               0       45     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               1        4     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        9     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       28     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        3     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       30     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        1     120
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+               0        5      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+               1        0      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       36      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        2      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                0       28      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                1        1      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                0       19      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                1        1      92
Birth       ki1000108-IRC              INDIA                          4+               0       17     386
Birth       ki1000108-IRC              INDIA                          4+               1        0     386
Birth       ki1000108-IRC              INDIA                          1                0      167     386
Birth       ki1000108-IRC              INDIA                          1                1        8     386
Birth       ki1000108-IRC              INDIA                          2                0      153     386
Birth       ki1000108-IRC              INDIA                          2                1        8     386
Birth       ki1000108-IRC              INDIA                          3                0       33     386
Birth       ki1000108-IRC              INDIA                          3                1        0     386
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+               0       19     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+               1        0     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      387     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        3     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                0       82     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                0       47     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                1        0     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+               0       92     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+               1        1     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      350     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        3     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                0      183     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                1        4     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                0       97     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                1        2     732
Birth       ki1113344-GMS-Nepal        NEPAL                          4+               0      306     696
Birth       ki1113344-GMS-Nepal        NEPAL                          4+               1       15     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0       44     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1        5     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2                0      139     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2                1        6     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3                0      176     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3                1        5     696
Birth       ki1114097-CONTENT          PERU                           4+               0        1       2
Birth       ki1114097-CONTENT          PERU                           4+               1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1114097-CONTENT          PERU                           2                0        1       2
Birth       ki1114097-CONTENT          PERU                           2                1        0       2
Birth       ki1114097-CONTENT          PERU                           3                0        0       2
Birth       ki1114097-CONTENT          PERU                           3                1        0       2
Birth       ki1135781-COHORTS          INDIA                          4+               0       91    4769
Birth       ki1135781-COHORTS          INDIA                          4+               1        1    4769
Birth       ki1135781-COHORTS          INDIA                          1                0     3021    4769
Birth       ki1135781-COHORTS          INDIA                          1                1      104    4769
Birth       ki1135781-COHORTS          INDIA                          2                0     1356    4769
Birth       ki1135781-COHORTS          INDIA                          2                1       29    4769
Birth       ki1135781-COHORTS          INDIA                          3                0      160    4769
Birth       ki1135781-COHORTS          INDIA                          3                1        7    4769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+               0      704   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+               1       51   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    12420   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     1522   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0     5152   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1      694   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                0     1705   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                1      181   22429
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+               0      118    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+               1       10    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     1548    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      157    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                0      660    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                1       49    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                0      261    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                1       17    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+               0       12     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+               1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0      145     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        5     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       47     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        3     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       28     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        0     240
6 months    ki0047075b-MAL-ED          BRAZIL                         4+               0      126     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       59     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          4+               0       25     235
6 months    ki0047075b-MAL-ED          INDIA                          4+               1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1                0       81     235
6 months    ki0047075b-MAL-ED          INDIA                          1                1        3     235
6 months    ki0047075b-MAL-ED          INDIA                          2                0       74     235
6 months    ki0047075b-MAL-ED          INDIA                          2                1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          3                0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          3                1        2     235
6 months    ki0047075b-MAL-ED          NEPAL                          4+               0      131     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       51     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                1        0     236
6 months    ki0047075b-MAL-ED          PERU                           4+               0      133     270
6 months    ki0047075b-MAL-ED          PERU                           4+               1        6     270
6 months    ki0047075b-MAL-ED          PERU                           1                0       18     270
6 months    ki0047075b-MAL-ED          PERU                           1                1        1     270
6 months    ki0047075b-MAL-ED          PERU                           2                0       49     270
6 months    ki0047075b-MAL-ED          PERU                           2                1        1     270
6 months    ki0047075b-MAL-ED          PERU                           3                0       60     270
6 months    ki0047075b-MAL-ED          PERU                           3                1        2     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+               0      185     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+               1        6     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       23     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               0      103     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       56     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        1     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+               0       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+               1        0     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      179     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       19     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       91     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1       15     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       43     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        8     369
6 months    ki1000108-IRC              INDIA                          4+               0       16     405
6 months    ki1000108-IRC              INDIA                          4+               1        1     405
6 months    ki1000108-IRC              INDIA                          1                0      172     405
6 months    ki1000108-IRC              INDIA                          1                1       11     405
6 months    ki1000108-IRC              INDIA                          2                0      156     405
6 months    ki1000108-IRC              INDIA                          2                1       14     405
6 months    ki1000108-IRC              INDIA                          3                0       32     405
6 months    ki1000108-IRC              INDIA                          3                1        3     405
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+               0       21     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+               1        0     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      419     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       12     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                0       92     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                1        2     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                0       58     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                1        0     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+               0       90     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+               1        1     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      326     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       13     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                0      178     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                1        6     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                0       98     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                1        3     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+               0      262     564
6 months    ki1113344-GMS-Nepal        NEPAL                          4+               1        6     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       38     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        2     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0      107     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        8     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3                0      136     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3                1        5     564
6 months    ki1114097-CONTENT          PERU                           4+               0       76     215
6 months    ki1114097-CONTENT          PERU                           4+               1        2     215
6 months    ki1114097-CONTENT          PERU                           1                0       43     215
6 months    ki1114097-CONTENT          PERU                           1                1        1     215
6 months    ki1114097-CONTENT          PERU                           2                0       53     215
6 months    ki1114097-CONTENT          PERU                           2                1        1     215
6 months    ki1114097-CONTENT          PERU                           3                0       39     215
6 months    ki1114097-CONTENT          PERU                           3                1        0     215
6 months    ki1135781-COHORTS          INDIA                          4+               0       93    4962
6 months    ki1135781-COHORTS          INDIA                          4+               1        0    4962
6 months    ki1135781-COHORTS          INDIA                          1                0     3000    4962
6 months    ki1135781-COHORTS          INDIA                          1                1      213    4962
6 months    ki1135781-COHORTS          INDIA                          2                0     1448    4962
6 months    ki1135781-COHORTS          INDIA                          2                1       26    4962
6 months    ki1135781-COHORTS          INDIA                          3                0      179    4962
6 months    ki1135781-COHORTS          INDIA                          3                1        3    4962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+               0      718   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+               1       26   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     9033   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      592   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0     4427   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1      313   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                0     1603   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                1       88   16800
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+               0      251    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+               1       11    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     2670    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      180    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                0     1165    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                1       60    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                0      468    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                1       20    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+               0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0      111     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       23     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       36     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        1     212
24 months   ki0047075b-MAL-ED          BRAZIL                         4+               0      104     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       48     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          4+               0       22     227
24 months   ki0047075b-MAL-ED          INDIA                          4+               1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          1                0       73     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        9     227
24 months   ki0047075b-MAL-ED          INDIA                          2                0       60     227
24 months   ki0047075b-MAL-ED          INDIA                          2                1       14     227
24 months   ki0047075b-MAL-ED          INDIA                          3                0       42     227
24 months   ki0047075b-MAL-ED          INDIA                          3                1        4     227
24 months   ki0047075b-MAL-ED          NEPAL                          4+               0      122     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+               1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       47     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                0       31     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                0       21     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                1        1     228
24 months   ki0047075b-MAL-ED          PERU                           4+               0      100     201
24 months   ki0047075b-MAL-ED          PERU                           4+               1       10     201
24 months   ki0047075b-MAL-ED          PERU                           1                0       13     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        3     201
24 months   ki0047075b-MAL-ED          PERU                           2                0       32     201
24 months   ki0047075b-MAL-ED          PERU                           2                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3                0       41     201
24 months   ki0047075b-MAL-ED          PERU                           3                1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+               0      165     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+               1       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        4     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               0       68     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               1       30     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       27     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1       23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       42     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1       15     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+               0       11     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+               1        3     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      129     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       72     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       71     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1       34     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       35     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1       16     371
24 months   ki1000108-IRC              INDIA                          4+               0       15     407
24 months   ki1000108-IRC              INDIA                          4+               1        2     407
24 months   ki1000108-IRC              INDIA                          1                0      159     407
24 months   ki1000108-IRC              INDIA                          1                1       25     407
24 months   ki1000108-IRC              INDIA                          2                0      158     407
24 months   ki1000108-IRC              INDIA                          2                1       12     407
24 months   ki1000108-IRC              INDIA                          3                0       34     407
24 months   ki1000108-IRC              INDIA                          3                1        2     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+               0       21     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+               1        1     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      368     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       39     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                0       84     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                1        8     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                0       53     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                1        4     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+               0       80     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+               1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      200     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                0      120     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                0       78     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                1        0     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+               0      209     488
24 months   ki1113344-GMS-Nepal        NEPAL                          4+               1       22     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       29     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        6     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0       91     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1       15     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3                0      106     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3                1       10     488
24 months   ki1114097-CONTENT          PERU                           4+               0       63     164
24 months   ki1114097-CONTENT          PERU                           4+               1        0     164
24 months   ki1114097-CONTENT          PERU                           1                0       28     164
24 months   ki1114097-CONTENT          PERU                           1                1        2     164
24 months   ki1114097-CONTENT          PERU                           2                0       38     164
24 months   ki1114097-CONTENT          PERU                           2                1        1     164
24 months   ki1114097-CONTENT          PERU                           3                0       32     164
24 months   ki1114097-CONTENT          PERU                           3                1        0     164
24 months   ki1135781-COHORTS          INDIA                          4+               0       71    3746
24 months   ki1135781-COHORTS          INDIA                          4+               1        5    3746
24 months   ki1135781-COHORTS          INDIA                          1                0     1541    3746
24 months   ki1135781-COHORTS          INDIA                          1                1      758    3746
24 months   ki1135781-COHORTS          INDIA                          2                0     1042    3746
24 months   ki1135781-COHORTS          INDIA                          2                1      179    3746
24 months   ki1135781-COHORTS          INDIA                          3                0      130    3746
24 months   ki1135781-COHORTS          INDIA                          3                1       20    3746
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+               0      337    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+               1       30    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4191    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      860    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     2037    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      363    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0      710    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       92    8620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+               0      244    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+               1        7    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2482    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      307    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0     1112    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1      104    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      457    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       34    4747


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
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/7b5fdb25-9050-4942-b3e6-1ee2d14fdf85/7fa2059a-e72b-4e78-a660-efaa4b56a76a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7b5fdb25-9050-4942-b3e6-1ee2d14fdf85/7fa2059a-e72b-4e78-a660-efaa4b56a76a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7b5fdb25-9050-4942-b3e6-1ee2d14fdf85/7fa2059a-e72b-4e78-a660-efaa4b56a76a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7b5fdb25-9050-4942-b3e6-1ee2d14fdf85/7fa2059a-e72b-4e78-a660-efaa4b56a76a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.0467290    0.0236238   0.0698341
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1020408    0.0172249   0.1868568
Birth       ki1113344-GMS-Nepal   NEPAL        2                    NA                0.0413793    0.0089385   0.0738201
Birth       ki1113344-GMS-Nepal   NEPAL        3                    NA                0.0276243    0.0037306   0.0515180
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0824355    0.0649051   0.0999658
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1122129    0.1063125   0.1181132
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.1076581    0.0983927   0.1169235
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0910944    0.0768378   0.1053510
Birth       kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0740582    0.0177157   0.1304007
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0922790    0.0768996   0.1076585
Birth       kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0690861    0.0465172   0.0916550
Birth       kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0601494    0.0182373   0.1020615
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0466158    0.0322569   0.0609747
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0598441    0.0550246   0.0646635
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0651593    0.0576312   0.0726875
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0571670    0.0462534   0.0680806
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0399238    0.0036357   0.0762118
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0630432    0.0544135   0.0716728
6 months    kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0491362    0.0361764   0.0620961
6 months    kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0398253    0.0196251   0.0600255
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.0952381    0.0573450   0.1331312
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1714286    0.0464412   0.2964159
24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1415094    0.0750891   0.2079298
24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.0862069    0.0350788   0.1373350
24 months   ki1135781-COHORTS     INDIA        4+                   NA                0.0657895    0.0205512   0.1110277
24 months   ki1135781-COHORTS     INDIA        1                    NA                0.3297086    0.3104894   0.3489277
24 months   ki1135781-COHORTS     INDIA        2                    NA                0.1466011    0.1267588   0.1664435
24 months   ki1135781-COHORTS     INDIA        3                    NA                0.1333333    0.0789262   0.1877405
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.1030731    0.0707589   0.1353874
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1645438    0.1526566   0.1764309
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.1545867    0.1399401   0.1692333
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.1229000    0.1002448   0.1455553
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0278884   -0.0089281   0.0647049
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1100753    0.0970601   0.1230905
24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0855263    0.0679585   0.1030942
24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0692464    0.0454346   0.0930583


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0445402   0.0292033   0.0598771
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1091444   0.1045855   0.1137033
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0826241   0.0709364   0.0943118
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0606548   0.0568001   0.0645094
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0561658   0.0493946   0.0629370
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1086066   0.0809724   0.1362407
24 months   ki1135781-COHORTS     INDIA        NA                   NA                0.2568073   0.2428154   0.2707992
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1560325   0.1472890   0.1647760
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0952180   0.0856733   0.1047628


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL        4+                   4+                1.0000000   1.0000000    1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        1                    4+                2.1836735   0.8301606    5.743984
Birth       ki1113344-GMS-Nepal   NEPAL        2                    4+                0.8855172   0.3504743    2.237370
Birth       ki1113344-GMS-Nepal   NEPAL        3                    4+                0.5911602   0.2182807    1.601014
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    4+                1.3612206   1.1009873    1.682964
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    4+                1.3059682   1.0365261    1.645451
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    4+                1.1050392   0.8555780    1.427236
Birth       kiGH5241-JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    4+                1.2460337   0.5726758    2.711132
Birth       kiGH5241-JiVitA-4     BANGLADESH   2                    4+                0.9328621   0.4059034    2.143938
Birth       kiGH5241-JiVitA-4     BANGLADESH   3                    4+                0.8121909   0.2873293    2.295812
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    4+                1.2837721   0.9373891    1.758150
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    4+                1.3977951   1.0089982    1.936407
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    4+                1.2263436   0.8484399    1.772569
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    4+                1.5790885   0.6290489    3.963953
6 months    kiGH5241-JiVitA-4     BANGLADESH   2                    4+                1.2307514   0.4850898    3.122616
6 months    kiGH5241-JiVitA-4     BANGLADESH   3                    4+                0.9975341   0.3600759    2.763513
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   4+                1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    4+                1.8000000   0.7844243    4.130418
24 months   ki1113344-GMS-Nepal   NEPAL        2                    4+                1.4858491   0.8030562    2.749182
24 months   ki1113344-GMS-Nepal   NEPAL        3                    4+                0.9051724   0.4431652    1.848830
24 months   ki1135781-COHORTS     INDIA        4+                   4+                1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS     INDIA        1                    4+                5.0115702   2.5134637    9.992520
24 months   ki1135781-COHORTS     INDIA        2                    4+                2.2283374   1.1056576    4.490981
24 months   ki1135781-COHORTS     INDIA        3                    4+                2.0266667   0.9110212    4.508542
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    4+                1.5963787   1.1636571    2.190014
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    4+                1.4997767   1.0892794    2.064971
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    4+                1.1923576   0.8485042    1.675557
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    4+                3.9469856   1.0452081   14.904874
24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    4+                3.0667293   0.8069311   11.655059
24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    4+                2.4829793   0.6354707    9.701764


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL        4+                   NA                -0.0021887   -0.0188213   0.0144438
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.0267089    0.0097018   0.0437161
Birth       kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.0085659   -0.0465123   0.0636441
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.0140390   -0.0000685   0.0281464
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.0162420   -0.0183951   0.0508792
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                 0.0133685   -0.0156169   0.0423538
24 months   ki1135781-COHORTS     INDIA        4+                   NA                 0.1910178    0.1447582   0.2372773
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.0529593    0.0218205   0.0840982
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.0673296    0.0310038   0.1036554


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL        4+                   NA                -0.0491408   -0.4971711   0.2648159
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.2447120    0.0714588   0.3856385
Birth       kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.1036731   -0.8860766   0.5740354
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.2314569   -0.0393784   0.4317195
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.2891802   -0.7075107   0.7040927
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                 0.1230907   -0.1868964   0.3521171
24 months   ki1135781-COHORTS     INDIA        4+                   NA                 0.7438177    0.4916036   0.8709091
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.3394123    0.1052851   0.5122736
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.7071096   -0.0808982   0.9206357
