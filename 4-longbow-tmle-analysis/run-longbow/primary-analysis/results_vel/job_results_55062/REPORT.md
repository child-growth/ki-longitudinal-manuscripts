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

**Outcome Variable:** y_rate_wtkg

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

agecat         studyid                    country                        nrooms    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  -------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            150     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2             50     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3             28     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4+           127     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              4     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2             20     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3             59     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          4+            25     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          1             84     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          2             77     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          3             46     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+           129     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             49     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          2             31     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          3             21     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           4+           138     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           1             19     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           2             51     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           3             62     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           195     254  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     254  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             21     254  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             25     254  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            98     233  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     233  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             57     233  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             65     233  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            12     331  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            177     331  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             93     331  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             49     331  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          4+            17     392  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          1            177     392  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          2            162     392  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          3             36     392  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+            22     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            458     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            101     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3             59     640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            347     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            184     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            103     725  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+           243     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1             34     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2            106     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3            126     509  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           4+            12      29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           1              6      29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           2              7      29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           3              4      29  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          4+            93    4795  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          1           3140    4795  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          2           1392    4795  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          3            170    4795  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+           693   20269  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1          12615   20269  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           5247   20269  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3           1714   20269  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+           107    2496  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1522    2496  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2            639    2496  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3            228    2496  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            145     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2             50     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3             27     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4+           126     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              4     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2             19     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3             59     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          4+            25     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          1             84     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          2             75     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          3             46     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+           130     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             51     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          2             31     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          3             21     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           4+           137     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           1             19     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           2             49     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           3             62     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           188     241  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             12     241  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     241  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     241  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           104     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             12     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             60     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63     239  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            12     322  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            171     322  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             91     322  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             48     322  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          4+            17     397  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          1            181     397  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          2            163     397  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          3             36     397  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+            21     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            427     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2             94     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3             59     601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            90     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            332     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            179     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            101     702  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+           225     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1             32     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2             95     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3            117     469  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           4+            78     214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           1             44     214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           2             54     214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           3             38     214  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          4+            89    4850  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          1           3145    4850  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          2           1437    4850  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          3            179    4850  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+           508   12711  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           7439   12711  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           3558   12711  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3           1206   12711  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+            77    1817  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1113    1817  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2            465    1817  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3            162    1817  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1            142     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2             45     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3             26     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4+           118     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              3     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2             18     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3             59     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          4+            25     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          1             83     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          2             74     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          3             48     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+           128     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          1             49     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          2             31     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          3             22     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           4+           130     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           1             19     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           2             44     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           3             52     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           182     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             10     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             18     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           100     225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             55     225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             59     225  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     325  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            176     325  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             86     325  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             49     325  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          4+            17     408  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          1            185     408  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          2            170     408  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          3             36     408  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+            20     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            412     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2             89     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3             55     576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            89     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            325     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            182     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3             97     693  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+           225     477  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1             33     477  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2             97     477  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3            122     477  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           4+            78     214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           1             44     214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           2             54     214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           3             38     214  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          4+            85    4338  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          1           2781    4338  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          2           1317    4338  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          3            155    4338  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+           153    3071  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1828    3071  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2            776    3071  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3            314    3071  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+            11     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            144     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2             43     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3             27     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4+           117     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              2     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2             18     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3             57     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          4+            25     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          1             81     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          2             74     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          3             47     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+           128     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          1             48     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          2             31     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          3             22     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           4+           123     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           1             18     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           2             43     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           3             51     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           182     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             11     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             17     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           102     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             52     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             59     224  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     327  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            182     327  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2             85     327  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             46     327  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          4+            16     401  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          1            183     401  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          2            167     401  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          3             35     401  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+            20     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            405     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2             90     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3             54     569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            88     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            316     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            180     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3             99     683  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+           213     454  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1             33     454  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2             93     454  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3            115     454  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           4+            77     212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           1             44     212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           2             53     212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           3             38     212  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          4+            77    3742  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          1           2355    3742  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          2           1175    3742  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          3            135    3742  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           173    3516  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2088    3516  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2            889    3516  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3            366    3516  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+            10     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1            135     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4+           113     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              2     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2             17     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3             52     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          1             81     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          2             73     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          3             47     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+           129     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          1             48     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          2             31     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          3             22     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           4+           116     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           1             17     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           2             40     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           3             51     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           173     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             18     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           103     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             53     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             59     226  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            13     334  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            183     334  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             92     334  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             46     334  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          4+            15     390  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          1            178     390  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          2            162     390  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          3             35     390  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+            20     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            375     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2             88     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3             54     537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            89     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            307     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            176     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             94     666  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+           214     452  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1             34     452  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2             95     452  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3            109     452  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           4+            70     199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           1             41     199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           2             51     199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           3             37     199  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           169    3549  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2109    3549  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2            907    3549  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3            364    3549  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+            10     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1            134     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2             41     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4+           108     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              1     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2             17     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3             49     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          1             82     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          2             72     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          3             47     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+           127     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          1             47     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          2             31     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          3             22     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           4+           112     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           1             17     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           2             38     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           3             47     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           172     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           102     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             10     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             50     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             58     220  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            11     325  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            173     325  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             93     325  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             48     325  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          4+            15     381  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          1            172     381  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          2            159     381  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          3             35     381  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            368     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2             87     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3             56     533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            84     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            269     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            165     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             87     605  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+           224     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1             35     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2            104     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3            114     477  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           4+            67     189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           1             36     189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           2             49     189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           3             37     189  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           176    3508  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2104    3508  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2            887    3508  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3            341    3508  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1            131     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4+           104     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              0     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2             16     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3             47     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          1             82     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          2             72     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          3             47     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+           127     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          1             47     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          2             31     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          3             22     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           4+           110     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           1             16     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           2             32     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           3             44     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           178     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             22     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            98     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             46     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             55     208  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            11     310  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            167     310  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             85     310  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             47     310  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          4+            15     378  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          1            169     378  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          2            161     378  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          3             33     378  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+            21     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            378     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2             88     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3             55     542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            83     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            237     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            149     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     547  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+           206     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1             30     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2            102     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3            109     447  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           4+            66     183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           1             34     183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           2             47     183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           3             36     183  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            130     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2             39     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4+           102     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              0     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2             15     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3             48     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          1             82     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          2             73     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          3             46     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          1             47     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          2             31     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          3             22     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           4+           105     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           1             15     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           2             28     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           3             41     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           181     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             22     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            96     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             47     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             54     206  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            12     311  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            170     311  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             85     311  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             44     311  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          4+            15     387  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          1            175     387  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          2            163     387  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          3             34     387  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            18     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            340     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2             80     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3             47     485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            81     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            206     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            133     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             73     493  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+           163     343  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1             24     343  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2             74     343  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3             82     343  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           4+            10      38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           1              7      38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           2             12      38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           3              9      38  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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
![](/tmp/f2caf816-dfa5-45f6-a4f3-d643768a7001/b896f013-ebde-4a6c-89f6-404e3ca94189/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f2caf816-dfa5-45f6-a4f3-d643768a7001/b896f013-ebde-4a6c-89f6-404e3ca94189/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f2caf816-dfa5-45f6-a4f3-d643768a7001/b896f013-ebde-4a6c-89f6-404e3ca94189/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.8889312    0.7401386   1.0377239
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8715195    0.8414501   0.9015890
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8871883    0.8287814   0.9455952
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8743373    0.8081249   0.9405497
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                0.7699805    0.7093054   0.8306556
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                0.7444246    0.7022118   0.7866373
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                0.7723234    0.7344551   0.8101917
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                0.7501697    0.6975275   0.8028119
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.9505118    0.9172356   0.9837879
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                0.9396885    0.8708396   1.0085374
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.0390064    0.9670455   1.1109673
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                0.9320471    0.8379332   1.0261611
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                0.9846221    0.9457208   1.0235235
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.8767922    0.7901055   0.9634790
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                0.9773613    0.9196948   1.0350277
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                0.9674206    0.9155411   1.0193002
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.9383272    0.9051540   0.9715003
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8837079    0.8159552   0.9514607
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.0243975    0.9386990   1.1100959
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.9556703    0.8761015   1.0352391
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8969202    0.8496992   0.9441411
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8961801    0.7525427   1.0398175
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8378150    0.7765737   0.8990563
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8690793    0.8101062   0.9280525
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.7547874    0.6461048   0.8634701
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7197265    0.6892474   0.7502056
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.7513086    0.7027650   0.7998522
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.8161019    0.7499187   0.8822850
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                0.8497824    0.7731514   0.9264135
0-3 months     ki1000108-IRC              INDIA                          1                    NA                0.7752002    0.7446598   0.8057405
0-3 months     ki1000108-IRC              INDIA                          2                    NA                0.7500085    0.7194271   0.7805899
0-3 months     ki1000108-IRC              INDIA                          3                    NA                0.7941625    0.7418074   0.8465177
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.9166609    0.8306042   1.0027176
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8924040    0.8747009   0.9101072
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.9254577    0.8888833   0.9620320
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.9124998    0.8680190   0.9569806
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.8898857    0.8482216   0.9315498
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8783292    0.8576041   0.8990543
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.8709586    0.8440039   0.8979133
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.9263514    0.8823946   0.9703081
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.8184384    0.7939154   0.8429613
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8029690    0.7344720   0.8714660
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8421427    0.8044964   0.8797890
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.8405015    0.8063900   0.8746129
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                0.8764260    0.8510804   0.9017717
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                0.7934418    0.7864574   0.8004261
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                0.8277380    0.8172785   0.8381976
0-3 months     ki1135781-COHORTS          INDIA                          3                    NA                0.8277247    0.8024209   0.8530285
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.8778687    0.8663980   0.8893394
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8532337    0.8495009   0.8569666
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.8631389    0.8576077   0.8686701
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.8727111    0.8629001   0.8825220
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.7077399    0.6281977   0.7872821
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.7426614    0.7256495   0.7596733
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.7359024    0.7106258   0.7611790
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.7443926    0.6986123   0.7901728
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.4682727    0.3689338   0.5676116
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4655128    0.4444322   0.4865935
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.5175226    0.4786014   0.5564439
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.4651151    0.4193361   0.5108942
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                0.4253486    0.3803989   0.4702983
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                0.4423321    0.4134410   0.4712231
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                0.4477419    0.4171563   0.4783275
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                0.4563788    0.4092543   0.5035033
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.5359727    0.5090698   0.5628756
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                0.4849621    0.4335230   0.5364012
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                0.5302621    0.4913618   0.5691623
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                0.5078059    0.4507764   0.5648353
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                0.4931513    0.4663337   0.5199690
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.4714648    0.4160712   0.5268585
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                0.5136236    0.4632104   0.5640369
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                0.5042104    0.4701381   0.5382827
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.4759908    0.4470045   0.5049771
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3935282    0.3138072   0.4732493
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.4914709    0.3851302   0.5978116
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.4053526    0.3297135   0.4809918
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.4490578    0.4132344   0.4848812
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4067210    0.2648363   0.5486057
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4448345    0.3986326   0.4910364
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4675733    0.4158859   0.5192606
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.5624715    0.4446690   0.6802740
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4534929    0.4309004   0.4760855
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.4973103    0.4568538   0.5377668
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.5082166    0.4519366   0.5644965
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                0.3638241    0.2761600   0.4514881
3-6 months     ki1000108-IRC              INDIA                          1                    NA                0.4518007    0.4276051   0.4759962
3-6 months     ki1000108-IRC              INDIA                          2                    NA                0.4988462    0.4686565   0.5290360
3-6 months     ki1000108-IRC              INDIA                          3                    NA                0.4153753    0.3581956   0.4725551
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.4687772    0.4157146   0.5218398
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4853792    0.4694174   0.5013410
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.4984720    0.4722767   0.5246673
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.4969413    0.4467543   0.5471283
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.5134068    0.4765732   0.5502405
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4866348    0.4708312   0.5024385
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.4966992    0.4718860   0.5215124
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.5249365    0.4961143   0.5537587
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.4882730    0.4691747   0.5073713
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4866404    0.4256698   0.5476110
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4940287    0.4628964   0.5251609
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.5237663    0.4945307   0.5530020
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                0.6041672    0.5705831   0.6377514
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                0.5556505    0.5123120   0.5989890
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                0.5926184    0.5466530   0.6385838
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                0.6201362    0.5726537   0.6676186
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                0.5268299    0.5089893   0.5446705
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                0.4640863    0.4583744   0.4697982
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                0.4964445    0.4880133   0.5048756
3-6 months     ki1135781-COHORTS          INDIA                          3                    NA                0.4921853    0.4708678   0.5135028
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.4525135    0.4367618   0.4682652
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4405531    0.4368244   0.4442819
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4404713    0.4331354   0.4478073
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4478517    0.4380256   0.4576779
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.4695240    0.4199592   0.5190887
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4357222    0.4252245   0.4462199
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.4358997    0.4152933   0.4565061
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.4604964    0.4334191   0.4875737
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.2813791    0.1951958   0.3675623
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2373442    0.2184420   0.2562464
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.2487099    0.2181282   0.2792916
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.2572469    0.2181326   0.2963613
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                0.2027563    0.1640981   0.2414145
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                0.2588795    0.2327711   0.2849879
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                0.2117225    0.1887735   0.2346715
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                0.2352065    0.1983306   0.2720825
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.2675138    0.2497442   0.2852834
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2674249    0.2313824   0.3034674
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                0.2659787    0.2139424   0.3180151
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                0.2870307    0.2345565   0.3395050
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   NA                0.2678397    0.2482479   0.2874314
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.2690585    0.2163484   0.3217687
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                0.2473215    0.2183638   0.2762793
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                0.2536923    0.2082485   0.2991361
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.2563138    0.2328230   0.2798045
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2407981    0.1220720   0.3595241
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.3221160    0.2194284   0.4248036
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.2601947    0.1954092   0.3249803
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.2654072    0.2321691   0.2986453
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2551114    0.1336799   0.3765429
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2074924    0.1679501   0.2470347
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2284236    0.1698855   0.2869617
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.2571094    0.2073743   0.3068446
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2503263    0.2275508   0.2731017
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.2650021    0.2343890   0.2956152
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.2853180    0.2405982   0.3300379
6-9 months     ki1000108-IRC              INDIA                          4+                   NA                0.2119676    0.1459177   0.2780176
6-9 months     ki1000108-IRC              INDIA                          1                    NA                0.2630564    0.2421653   0.2839475
6-9 months     ki1000108-IRC              INDIA                          2                    NA                0.2720572    0.2495029   0.2946114
6-9 months     ki1000108-IRC              INDIA                          3                    NA                0.2449140    0.2105080   0.2793200
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.2934966    0.2423544   0.3446388
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2406099    0.2257428   0.2554770
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2603593    0.2333951   0.2873235
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2773833    0.2422677   0.3124989
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.3118667    0.2826176   0.3411158
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2616965    0.2471720   0.2762210
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2512494    0.2317175   0.2707814
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2823575    0.2407123   0.3240027
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.1864883    0.1681697   0.2048070
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1989400    0.1592620   0.2386180
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1879376    0.1610361   0.2148390
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.1900679    0.1664661   0.2136696
6-9 months     ki1114097-CONTENT          PERU                           4+                   NA                0.3203947    0.2903795   0.3504098
6-9 months     ki1114097-CONTENT          PERU                           1                    NA                0.2764401    0.2322575   0.3206227
6-9 months     ki1114097-CONTENT          PERU                           2                    NA                0.3144601    0.2773612   0.3515590
6-9 months     ki1114097-CONTENT          PERU                           3                    NA                0.3794252    0.3222414   0.4366089
6-9 months     ki1135781-COHORTS          INDIA                          4+                   NA                0.3242409    0.3057018   0.3427799
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                0.2561112    0.2501330   0.2620893
6-9 months     ki1135781-COHORTS          INDIA                          2                    NA                0.2979821    0.2892604   0.3067039
6-9 months     ki1135781-COHORTS          INDIA                          3                    NA                0.3356184    0.3119800   0.3592567
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.2545969    0.2320823   0.2771115
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2360181    0.2294315   0.2426048
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.2391988    0.2304738   0.2479239
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2567916    0.2366166   0.2769665
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.2203466    0.1250595   0.3156337
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1728761    0.1551547   0.1905974
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.1688859    0.1393706   0.1984011
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.1762590    0.1412732   0.2112448
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                0.1791409    0.1239846   0.2342972
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1801469    0.1548820   0.2054117
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                0.1746648    0.1462588   0.2030708
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                0.1752530    0.1432417   0.2072643
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.1894353    0.1711775   0.2076930
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1606714    0.1181663   0.2031764
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                0.2034033    0.1685253   0.2382813
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                0.1932318    0.1607605   0.2257031
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.1837528    0.1625277   0.2049779
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.1437736    0.1179484   0.1695989
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.1975617    0.1637213   0.2314020
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.2018946    0.1628613   0.2409278
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.2163154    0.1904452   0.2421855
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2826020    0.2212145   0.3439895
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.2033723    0.1242617   0.2824830
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.1783145    0.1078391   0.2487899
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1862704    0.1549430   0.2175977
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1125163   -0.0345590   0.2595916
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1478714    0.1066295   0.1891133
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1721449    0.1326971   0.2115926
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.2505076    0.1884699   0.3125453
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2089496    0.1846152   0.2332841
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.1817469    0.1495852   0.2139086
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.2758544    0.2254984   0.3262103
9-12 months    ki1000108-IRC              INDIA                          4+                   NA                0.2139317    0.1498580   0.2780054
9-12 months    ki1000108-IRC              INDIA                          1                    NA                0.2064054    0.1841156   0.2286952
9-12 months    ki1000108-IRC              INDIA                          2                    NA                0.2191830    0.1965181   0.2418479
9-12 months    ki1000108-IRC              INDIA                          3                    NA                0.2102612    0.1725856   0.2479369
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.1733041    0.1204556   0.2261527
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1772257    0.1663810   0.1880703
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1800673    0.1534970   0.2066377
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1723165    0.1419985   0.2026345
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.2249555    0.1996479   0.2502631
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1827660    0.1674369   0.1980950
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.1896822    0.1712446   0.2081198
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2381961    0.2058676   0.2705246
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.1502399    0.1313069   0.1691728
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1441952    0.1059258   0.1824646
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1284618    0.0980874   0.1588362
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.1486038    0.1242201   0.1729875
9-12 months    ki1114097-CONTENT          PERU                           4+                   NA                0.2418669    0.2092312   0.2745026
9-12 months    ki1114097-CONTENT          PERU                           1                    NA                0.1904387    0.1558127   0.2250647
9-12 months    ki1114097-CONTENT          PERU                           2                    NA                0.2168532    0.1832643   0.2504421
9-12 months    ki1114097-CONTENT          PERU                           3                    NA                0.2433130    0.1973795   0.2892465
9-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.2653647    0.2446385   0.2860909
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2027216    0.1963441   0.2090991
9-12 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2260738    0.2173641   0.2347836
9-12 months    ki1135781-COHORTS          INDIA                          3                    NA                0.2402158    0.2154562   0.2649754
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.1603530    0.1391547   0.1815512
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1542387    0.1489056   0.1595719
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.1540847    0.1458036   0.1623657
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.1543425    0.1419293   0.1667558
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.1643131    0.0982610   0.2303652
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1361404    0.1154825   0.1567984
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.1291779    0.0930858   0.1652700
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.1302673    0.0900710   0.1704635
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.1653828    0.1200076   0.2107581
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1811084    0.1554020   0.2068147
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.1806983    0.1510566   0.2103400
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.1548566    0.1179186   0.1917945
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.1547499    0.1355619   0.1739379
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1566173    0.1058572   0.2073774
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.1623089    0.1193817   0.2052362
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.1393365    0.0903161   0.1883569
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.1480354    0.1244451   0.1716257
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1882595    0.1396043   0.2369147
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.1037664    0.0663065   0.1412264
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.1365717    0.0996421   0.1735013
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.1965816    0.1684912   0.2246720
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1033208   -0.0878590   0.2945006
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.1646571    0.1009926   0.2283217
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.2086232    0.1352576   0.2819888
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1346245    0.1007958   0.1684531
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2493631    0.1149574   0.3837688
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1787187    0.1208872   0.2365501
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1621051    0.1146090   0.2096012
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.1161870    0.0424892   0.1898848
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1635927    0.1437342   0.1834512
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.1445370    0.1195528   0.1695212
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.1158115    0.0789416   0.1526815
12-15 months   ki1000108-IRC              INDIA                          4+                   NA                0.1664295    0.1158868   0.2169723
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.1865577    0.1661211   0.2069942
12-15 months   ki1000108-IRC              INDIA                          2                    NA                0.1744781    0.1551055   0.1938507
12-15 months   ki1000108-IRC              INDIA                          3                    NA                0.2175863    0.1780485   0.2571241
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.2402765    0.1683314   0.3122216
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1791955    0.1649437   0.1934473
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1700195    0.1422865   0.1977525
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1997742    0.1631728   0.2363755
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1696023    0.1402143   0.1989903
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1606127    0.1464396   0.1747858
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.1696935    0.1483822   0.1910049
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1697507    0.1309187   0.2085828
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.1594633    0.1390106   0.1799160
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1490251    0.1043509   0.1936994
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1970977    0.1687945   0.2254008
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.1794157    0.1539838   0.2048476
12-15 months   ki1114097-CONTENT          PERU                           4+                   NA                0.1748330    0.1442278   0.2054383
12-15 months   ki1114097-CONTENT          PERU                           1                    NA                0.1847673    0.1455844   0.2239503
12-15 months   ki1114097-CONTENT          PERU                           2                    NA                0.2047766    0.1624127   0.2471404
12-15 months   ki1114097-CONTENT          PERU                           3                    NA                0.1543366    0.1078484   0.2008248
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.1295795    0.0989438   0.1602151
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1279306    0.1233422   0.1325190
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.1315606    0.1235872   0.1395340
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.1415456    0.1266008   0.1564905
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.1153579    0.0425116   0.1882041
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1420525    0.1234331   0.1606719
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.1545627    0.1112976   0.1978277
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.1343949    0.0946442   0.1741457
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.1538622    0.1094681   0.1982562
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1582882    0.1341100   0.1824664
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.1584601    0.1300830   0.1868373
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.1793161    0.1456468   0.2129854
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.1683430    0.1487579   0.1879282
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1833264    0.1387209   0.2279319
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.1644713    0.1241363   0.2048063
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.1957090    0.1446495   0.2467686
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.1548444    0.1308990   0.1787899
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1638235    0.0890192   0.2386278
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.1402300    0.0891489   0.1913112
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.1295597    0.0861296   0.1729898
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.2283154    0.1964499   0.2601809
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2178395   -0.0653453   0.5010243
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.2451752    0.1446984   0.3456520
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.1976668    0.1234281   0.2719055
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1231313    0.0915611   0.1547016
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1641482    0.0096814   0.3186149
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1506757    0.0951930   0.2061585
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1688303    0.1185858   0.2190748
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.2070931    0.1239104   0.2902759
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1377812    0.1200879   0.1554746
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.1739028    0.1409719   0.2068337
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.1605651    0.1346737   0.1864566
15-18 months   ki1000108-IRC              INDIA                          4+                   NA                0.1634531    0.1042240   0.2226822
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.1468690    0.1254728   0.1682652
15-18 months   ki1000108-IRC              INDIA                          2                    NA                0.1854799    0.1649690   0.2059909
15-18 months   ki1000108-IRC              INDIA                          3                    NA                0.1049673    0.0635427   0.1463918
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.2285579    0.1724162   0.2846996
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1551078    0.1412313   0.1689843
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1582753    0.1269772   0.1895734
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1562746    0.1157542   0.1967950
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1891085    0.1566209   0.2215961
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1598153    0.1449945   0.1746361
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.1489173    0.1263523   0.1714822
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1669623    0.1358558   0.1980689
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.2358624    0.2128391   0.2588857
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2469287    0.1926674   0.3011901
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2294005    0.1971131   0.2616878
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.2406951    0.2074535   0.2739368
15-18 months   ki1114097-CONTENT          PERU                           4+                   NA                0.1657005    0.1444097   0.1869913
15-18 months   ki1114097-CONTENT          PERU                           1                    NA                0.1882112    0.1446138   0.2318086
15-18 months   ki1114097-CONTENT          PERU                           2                    NA                0.1510998    0.1046971   0.1975025
15-18 months   ki1114097-CONTENT          PERU                           3                    NA                0.1975654    0.1518599   0.2432710
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.1723833    0.1470842   0.1976824
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1601369    0.1536604   0.1666135
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.1598539    0.1523113   0.1673964
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.1501554    0.1362326   0.1640781
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.1836346    0.0917871   0.2754820
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1292321    0.1081624   0.1503018
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.1669097    0.1277884   0.2060310
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.1628739    0.1092382   0.2165096
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.2053407    0.1684216   0.2422598
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1905360    0.1654799   0.2155921
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.1589399    0.1304038   0.1874759
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.1458826    0.1169769   0.1747883
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.1637497    0.1426701   0.1848292
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1368718    0.1026209   0.1711228
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.1293540    0.0637425   0.1949655
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.1137089    0.0335849   0.1938329
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.1686716    0.1407732   0.1965700
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1822077    0.1175778   0.2468375
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.1642792    0.1089756   0.2195828
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.1345094    0.0946775   0.1743413
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.1782840    0.1482353   0.2083326
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1086963   -0.1020036   0.3193963
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.2034430    0.1168588   0.2900272
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.1950016    0.0835115   0.3064918
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1466844    0.1099825   0.1833863
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1503309   -0.0013370   0.3019988
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1247956    0.0665246   0.1830666
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1631445    0.1238131   0.2024759
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.1895086    0.1281757   0.2508415
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1378127    0.1212046   0.1544208
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.1216262    0.0800726   0.1631798
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.1530500    0.1179596   0.1881405
18-21 months   ki1000108-IRC              INDIA                          4+                   NA                0.2444529    0.1263631   0.3625428
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.1560194    0.1353613   0.1766775
18-21 months   ki1000108-IRC              INDIA                          2                    NA                0.1602382    0.1414774   0.1789991
18-21 months   ki1000108-IRC              INDIA                          3                    NA                0.1074592    0.0693780   0.1455403
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.1690946    0.1187367   0.2194526
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1269369    0.1133973   0.1404766
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1458580    0.1154095   0.1763065
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1295005    0.0915111   0.1674900
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1332895    0.1037066   0.1628723
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1383971    0.1230675   0.1537267
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.1563710    0.1333710   0.1793710
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1440498    0.1122257   0.1758739
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.1342456    0.1113758   0.1571155
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0694626   -0.0027889   0.1417141
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1655571    0.1336416   0.1974726
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.1545114    0.1208731   0.1881497
18-21 months   ki1114097-CONTENT          PERU                           4+                   NA                0.2040220    0.1693852   0.2386587
18-21 months   ki1114097-CONTENT          PERU                           1                    NA                0.1870926    0.1528824   0.2213028
18-21 months   ki1114097-CONTENT          PERU                           2                    NA                0.1865089    0.1542069   0.2188109
18-21 months   ki1114097-CONTENT          PERU                           3                    NA                0.1835828    0.1342022   0.2329633
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.1462360    0.0756979   0.2167741
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1570051    0.1392433   0.1747669
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.1494607    0.1079373   0.1909841
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.1450703    0.0972999   0.1928408
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.1410648    0.0958556   0.1862741
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1497000    0.1279056   0.1714945
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.1712778    0.1456014   0.1969542
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.1536393    0.1278541   0.1794246
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.1634749    0.1336875   0.1932623
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1714888    0.1326431   0.2103345
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.1815043    0.1323789   0.2306297
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.1789281    0.1211541   0.2367021
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.1770338    0.1482565   0.2058112
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2086210    0.1481560   0.2690861
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.1344263    0.0921588   0.1766937
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.2057769    0.1645944   0.2469595
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.1796559    0.1521203   0.2071916
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2955510    0.1426342   0.4484678
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.1692241    0.0888521   0.2495961
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.2016266    0.1031406   0.3001126
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1709775    0.1316376   0.2103174
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0468868   -0.1172676   0.2110412
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0962359    0.0404165   0.1520554
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1435694    0.0907097   0.1964290
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.1734709    0.0950687   0.2518731
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1426983    0.1259629   0.1594337
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.1633494    0.1320001   0.1946987
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.1517661    0.1108629   0.1926693
21-24 months   ki1000108-IRC              INDIA                          4+                   NA                0.1863429    0.1070383   0.2656476
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1794639    0.1572195   0.2017083
21-24 months   ki1000108-IRC              INDIA                          2                    NA                0.1732684    0.1530437   0.1934931
21-24 months   ki1000108-IRC              INDIA                          3                    NA                0.1918887    0.1412575   0.2425199
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.1295471    0.0890459   0.1700484
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1369822    0.1236854   0.1502790
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1417898    0.1089099   0.1746696
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1580606    0.1158769   0.2002442
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1940336    0.1634362   0.2246309
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1674479    0.1488010   0.1860948
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.1724215    0.1464083   0.1984346
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1904605    0.1498292   0.2310919
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.1830052    0.1458569   0.2201536
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2249928    0.1346939   0.3152917
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1753757    0.1217239   0.2290275
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.1569866    0.1059090   0.2080641
21-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.1745746    0.0686569   0.2804922
21-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.1806927    0.0693585   0.2920269
21-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.2695283    0.1840127   0.3550440
21-24 months   ki1114097-CONTENT          PERU                           3                    NA                0.1729186    0.1016900   0.2441472


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8772390   0.8535646   0.9009134
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7600956   0.7374283   0.7827630
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9579130   0.9310445   0.9847815
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9711748   0.9453625   0.9969872
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9442402   0.9164250   0.9720554
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8849237   0.8543694   0.9154779
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7675304   0.7480134   0.7870474
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8057950   0.8003517   0.8112383
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8576703   0.8546556   0.8606851
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7394732   0.7257200   0.7532264
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4668324   0.4408845   0.4927803
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4667726   0.4491630   0.4843822
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                0.5883606   0.5672514   0.6094698
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4761053   0.4716349   0.4805758
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4414088   0.4384396   0.4443780
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4391710   0.4303780   0.4479640
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2623667   0.2484364   0.2762970
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                0.3203724   0.3008854   0.3398595
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2731093   0.2684405   0.2777781
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2398525   0.2345783   0.2451267
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2127049   0.1984247   0.2269852
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2242885   0.2061680   0.2424089
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2136356   0.2088035   0.2184677
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1545123   0.1502488   0.1587759
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1828907   0.1700739   0.1957075
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1810659   0.1624244   0.1997074
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1304576   0.1263404   0.1345747
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1601431   0.1465285   0.1737577
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1713509   0.1529966   0.1897053
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1595310   0.1548323   0.1642296
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1597303   0.1463244   0.1731363
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1921232   0.1732877   0.2109588
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1777368   0.1639302   0.1915434
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2052948   0.1562051   0.2543845


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0174117   -0.1694171    0.1345937
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0017429   -0.1617148    0.1582289
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0145939   -0.1780691    0.1488812
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0255559   -0.0995362    0.0484243
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0023429   -0.0692392    0.0739250
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0198108   -0.1003566    0.0607350
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0108233   -0.0874185    0.0657719
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0884946    0.0090958    0.1678935
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0184646   -0.1183202    0.0813909
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    4+                -0.1078299   -0.2030017   -0.0126581
0-3 months     ki0047075b-MAL-ED          PERU                           2                    4+                -0.0072609   -0.0769816    0.0624599
0-3 months     ki0047075b-MAL-ED          PERU                           3                    4+                -0.0172015   -0.0820806    0.0476776
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0546192   -0.1300029    0.0207645
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0860703   -0.0058161    0.1779567
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0173431   -0.0689567    0.1036430
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0007401   -0.1518707    0.1503906
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0591052   -0.1366906    0.0184803
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0278409   -0.1034728    0.0477910
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0350609   -0.1478718    0.0777499
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0034789   -0.1227578    0.1158000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0613144   -0.0660066    0.1886355
0-3 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    4+                -0.0745822   -0.1571065    0.0079421
0-3 months     ki1000108-IRC              INDIA                          2                    4+                -0.0997739   -0.1823727   -0.0171752
0-3 months     ki1000108-IRC              INDIA                          3                    4+                -0.0556199   -0.1484195    0.0371797
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0242568   -0.1121231    0.0636094
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.0087968   -0.0847345    0.1023280
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0041611   -0.1010530    0.0927309
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0115565   -0.0578833    0.0347703
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0189271   -0.0683472    0.0304930
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0364657   -0.0239267    0.0968581
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0154694   -0.0882452    0.0573064
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0237043   -0.0212471    0.0686557
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0220631   -0.0199679    0.0640940
0-3 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.0829843   -0.1092455   -0.0567231
0-3 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0486880   -0.0760822   -0.0212938
0-3 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0487013   -0.0845034   -0.0128992
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.0246350   -0.0365251   -0.0127448
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.0147299   -0.0275713   -0.0018885
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0051577   -0.0201215    0.0098061
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.0349215   -0.0459203    0.1157634
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.0281625   -0.0569595    0.1132845
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0366527   -0.0543058    0.1276112
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0027599   -0.1046439    0.0991242
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0492499   -0.0571894    0.1556892
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0031576   -0.1128683    0.1065531
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0169835   -0.0367210    0.0706879
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0223933   -0.0323737    0.0771603
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0310302   -0.0343766    0.0964370
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0510106   -0.1096985    0.0076772
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0057106   -0.0529866    0.0415653
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0281668   -0.0915853    0.0352517
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    4+                -0.0216865   -0.0830724    0.0396995
3-6 months     ki0047075b-MAL-ED          PERU                           2                    4+                 0.0204723   -0.0364797    0.0774243
3-6 months     ki0047075b-MAL-ED          PERU                           3                    4+                 0.0110591   -0.0322444    0.0543625
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0824626   -0.1665628    0.0016377
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0154800   -0.0943526    0.1253127
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0706382   -0.1517911    0.0105147
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0423368   -0.1889776    0.1043040
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0042233   -0.0635841    0.0551375
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0185155   -0.0440669    0.0810978
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.1089786   -0.2289034    0.0109462
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0651612   -0.1896096    0.0592872
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0542549   -0.1849682    0.0764584
3-6 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    4+                 0.0879766   -0.0031875    0.1791408
3-6 months     ki1000108-IRC              INDIA                          2                    4+                 0.1350222    0.0419278    0.2281165
3-6 months     ki1000108-IRC              INDIA                          3                    4+                 0.0515513   -0.0530951    0.1561976
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.0166020   -0.0389325    0.0721365
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.0296948   -0.0295903    0.0889800
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.0281641   -0.0450293    0.1013576
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0267720   -0.0668395    0.0132956
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0167076   -0.0611251    0.0277098
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0115296   -0.0352411    0.0583004
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0016326   -0.0656997    0.0624345
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0057556   -0.0307804    0.0422917
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0354933    0.0007261    0.0702605
3-6 months     ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    4+                -0.0485167   -0.1034327    0.0063993
3-6 months     ki1114097-CONTENT          PERU                           2                    4+                -0.0115488   -0.0684875    0.0453899
3-6 months     ki1114097-CONTENT          PERU                           3                    4+                 0.0159689   -0.0424290    0.0743669
3-6 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.0627436   -0.0814224   -0.0440648
3-6 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0303855   -0.0500684   -0.0107025
3-6 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0346446   -0.0624064   -0.0068829
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.0119604   -0.0280537    0.0041330
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.0120422   -0.0295721    0.0054878
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0046618   -0.0231294    0.0138059
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0338018   -0.0843963    0.0167927
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0336243   -0.0872015    0.0199530
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0090276   -0.0659849    0.0479298
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0440349   -0.1322208    0.0441511
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0326692   -0.1241633    0.0588249
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0241322   -0.1190256    0.0707612
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0561232    0.0093829    0.1028635
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0089662   -0.0360391    0.0539715
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0324502   -0.0211011    0.0860016
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0000889   -0.0402374    0.0400597
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0015351   -0.0566582    0.0535880
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0195169   -0.0358541    0.0748880
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    4+                 0.0012189   -0.0549635    0.0574013
6-9 months     ki0047075b-MAL-ED          PERU                           2                    4+                -0.0205181   -0.0555437    0.0145075
6-9 months     ki0047075b-MAL-ED          PERU                           3                    4+                -0.0141473   -0.0636291    0.0353344
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0155157   -0.1368870    0.1058556
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0658022   -0.0397751    0.1713796
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0038810   -0.0650210    0.0727829
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0102958   -0.1361648    0.1155731
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0579148   -0.1097155   -0.0061141
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0369836   -0.1042361    0.0302689
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0067832   -0.0615032    0.0479368
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.0078926   -0.0505128    0.0662981
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0282086   -0.0385851    0.0950023
6-9 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    4+                 0.0510887   -0.0183880    0.1205654
6-9 months     ki1000108-IRC              INDIA                          2                    4+                 0.0600895   -0.0097377    0.1299168
6-9 months     ki1000108-IRC              INDIA                          3                    4+                 0.0329463   -0.0417165    0.1076091
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0528866   -0.1061905    0.0004173
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0331373   -0.0910113    0.0247368
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0161133   -0.0781706    0.0459440
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0501702   -0.0829308   -0.0174095
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0606172   -0.0958691   -0.0253654
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0295092   -0.0806413    0.0216229
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0124517   -0.0312782    0.0561815
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0014493   -0.0309223    0.0338208
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0035795   -0.0262634    0.0334225
6-9 months     ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           1                    4+                -0.0439545   -0.0972319    0.0093228
6-9 months     ki1114097-CONTENT          PERU                           2                    4+                -0.0059346   -0.0534898    0.0416207
6-9 months     ki1114097-CONTENT          PERU                           3                    4+                 0.0590305   -0.0053265    0.1233874
6-9 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.0681297   -0.0875926   -0.0486668
6-9 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0262587   -0.0467346   -0.0057829
6-9 months     ki1135781-COHORTS          INDIA                          3                    4+                 0.0113775   -0.0186591    0.0414141
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0185788   -0.0417723    0.0046147
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0153981   -0.0390081    0.0082120
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0021947   -0.0285454    0.0329348
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0474705   -0.1444281    0.0494871
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0514607   -0.1513827    0.0484614
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0440876   -0.1457366    0.0575615
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0010060   -0.0607033    0.0627153
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0044761   -0.0667265    0.0577743
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0038879   -0.0683665    0.0605906
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0287639   -0.0751422    0.0176144
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0139680   -0.0254510    0.0533871
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0037965   -0.0335729    0.0411659
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.0399792   -0.0733144   -0.0066440
9-12 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.0138088   -0.0261422    0.0537599
9-12 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0181417   -0.0263476    0.0626311
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.0662866   -0.0002270    0.1328003
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0129431   -0.0962976    0.0704115
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0380009   -0.1127739    0.0367721
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0737541   -0.2242800    0.0767718
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0383990   -0.0902745    0.0134765
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0141255   -0.0648899    0.0366388
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0415579   -0.1081714    0.0250555
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0687607   -0.1385127    0.0009913
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0253468   -0.0547745    0.1054680
9-12 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    4+                -0.0075263   -0.0755030    0.0604503
9-12 months    ki1000108-IRC              INDIA                          2                    4+                 0.0052513   -0.0627337    0.0732363
9-12 months    ki1000108-IRC              INDIA                          3                    4+                -0.0036705   -0.0777609    0.0704200
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.0039215   -0.0501877    0.0580308
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.0067632   -0.0524510    0.0659774
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0009876   -0.0620960    0.0601207
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0421895   -0.0717286   -0.0126505
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0352733   -0.0665295   -0.0040171
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0132406   -0.0277868    0.0542679
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0060447   -0.0487275    0.0366382
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0217780   -0.0575413    0.0139852
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0016361   -0.0325449    0.0292728
9-12 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           1                    4+                -0.0514282   -0.0989336   -0.0039228
9-12 months    ki1114097-CONTENT          PERU                           2                    4+                -0.0250137   -0.0717870    0.0217596
9-12 months    ki1114097-CONTENT          PERU                           3                    4+                 0.0014461   -0.0549814    0.0578736
9-12 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.0626431   -0.0843361   -0.0409502
9-12 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.0392909   -0.0617785   -0.0168032
9-12 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.0251489   -0.0574530    0.0071552
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0061142   -0.0278100    0.0155816
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0062683   -0.0288348    0.0162982
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0060104   -0.0306480    0.0186272
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0281726   -0.0972902    0.0409449
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0351352   -0.1103220    0.0400516
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0340458   -0.1112303    0.0431386
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0157255   -0.0364753    0.0679264
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0153155   -0.0389032    0.0695342
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0105263   -0.0688620    0.0478095
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0018674   -0.0525156    0.0562504
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0075590   -0.0396877    0.0548058
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0154134   -0.0680864    0.0372596
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    4+                 0.0402241   -0.0138499    0.0942982
12-15 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.0442690   -0.0885174   -0.0000206
12-15 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.0114637   -0.0552417    0.0323143
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0932608   -0.2865093    0.0999877
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0319245   -0.1014218    0.0375729
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0120416   -0.0665485    0.0906317
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.1147387   -0.0237770    0.2532543
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0440942   -0.0228992    0.1110876
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0274806   -0.0309293    0.0858905
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                 0.0474057   -0.0289344    0.1237458
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.0283500   -0.0496493    0.1063493
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0003755   -0.0827872    0.0820362
12-15 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    4+                 0.0201281   -0.0342467    0.0745030
12-15 months   ki1000108-IRC              INDIA                          2                    4+                 0.0080486   -0.0462635    0.0623606
12-15 months   ki1000108-IRC              INDIA                          3                    4+                 0.0511568   -0.0131453    0.1154589
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0610810   -0.1343494    0.0121875
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0702570   -0.1474861    0.0069720
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0405024   -0.1212758    0.0402711
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0089896   -0.0416336    0.0236544
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0000912   -0.0362335    0.0364159
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0001485   -0.0486290    0.0489259
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0104381   -0.0595347    0.0386585
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0376344    0.0026916    0.0725772
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0199524   -0.0125289    0.0524338
12-15 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           1                    4+                 0.0099343   -0.0398089    0.0596774
12-15 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0299436   -0.0223814    0.0822685
12-15 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0204964   -0.0763547    0.0353618
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0016489   -0.0326701    0.0293724
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.0019811   -0.0293373    0.0332996
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0119662   -0.0220199    0.0459522
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0266946   -0.0484661    0.1018553
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0392048   -0.0455852    0.1239948
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.0190371   -0.0641471    0.1022212
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0044260   -0.0462663    0.0551184
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0045980   -0.0483158    0.0575118
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0254539   -0.0304442    0.0813520
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0149834   -0.0338157    0.0637824
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0038717   -0.0480800    0.0403366
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0273660   -0.0272165    0.0819486
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    4+                 0.0089791   -0.0696257    0.0875839
15-18 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.0146144   -0.0711100    0.0418812
15-18 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.0252848   -0.0749196    0.0243501
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0104759   -0.2954073    0.2744555
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0168597   -0.0886607    0.1223801
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0306486   -0.1115142    0.0502169
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0410168   -0.1167143    0.1987479
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0275444   -0.0369265    0.0920153
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0456990   -0.0139027    0.1053007
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0693119   -0.1543593    0.0157356
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0331903   -0.1227887    0.0564080
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0465280   -0.1337972    0.0407413
15-18 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    4+                -0.0165841   -0.0795768    0.0464087
15-18 months   ki1000108-IRC              INDIA                          2                    4+                 0.0220268   -0.0406032    0.0846569
15-18 months   ki1000108-IRC              INDIA                          3                    4+                -0.0584859   -0.1307875    0.0138158
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0734501   -0.1312719   -0.0156283
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0702826   -0.1346672   -0.0058980
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0722833   -0.1415033   -0.0030632
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0292932   -0.0650119    0.0064255
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0401912   -0.0797788   -0.0006037
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0221462   -0.0671569    0.0228646
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0110664   -0.0481067    0.0702395
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0064619   -0.0463358    0.0334120
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0048328   -0.0355501    0.0452157
15-18 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           1                    4+                 0.0225107   -0.0261472    0.0711686
15-18 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0146007   -0.0657663    0.0365648
15-18 months   ki1114097-CONTENT          PERU                           3                    4+                 0.0318649   -0.0186254    0.0823552
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0122464   -0.0382750    0.0137822
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0125294   -0.0386569    0.0135981
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0222279   -0.0509255    0.0064696
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0544025   -0.1487954    0.0399905
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0167249   -0.1168878    0.0834380
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0207607   -0.1269605    0.0854392
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0148047   -0.0594231    0.0298137
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0464008   -0.0931171    0.0003155
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0594581   -0.1064137   -0.0125025
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0268778   -0.0671733    0.0134177
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0343957   -0.1035898    0.0347984
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0500408   -0.1329958    0.0329143
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           1                    4+                 0.0135361   -0.0570607    0.0841329
18-21 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.0043924   -0.0666568    0.0578719
18-21 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.0341622   -0.0827933    0.0144689
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0695876   -0.2824776    0.1433023
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0251591   -0.0665334    0.1168515
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0167177   -0.0988296    0.1322649
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0036465   -0.1523989    0.1596920
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0218888   -0.0907549    0.0469773
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0164600   -0.0373357    0.0702558
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0516959   -0.1152934    0.0119017
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0678824   -0.1421620    0.0063973
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0364585   -0.1070565    0.0341395
18-21 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    4+                -0.0884335   -0.2083765    0.0315095
18-21 months   ki1000108-IRC              INDIA                          2                    4+                -0.0842147   -0.2037691    0.0353397
18-21 months   ki1000108-IRC              INDIA                          3                    4+                -0.1369937   -0.2610566   -0.0129309
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0421577   -0.0942921    0.0099767
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0232367   -0.0821015    0.0356282
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0395941   -0.1027053    0.0235171
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                 0.0051076   -0.0283298    0.0385451
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0230815   -0.0144771    0.0606401
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0107604   -0.0328333    0.0543541
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0647830   -0.1406716    0.0111056
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0313114   -0.0080927    0.0707156
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0202658   -0.0206167    0.0611483
18-21 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           1                    4+                -0.0169294   -0.0657964    0.0319377
18-21 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0175130   -0.0647036    0.0296775
18-21 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0204392   -0.0811358    0.0402575
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0107691   -0.0620660    0.0836043
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0032247   -0.0786776    0.0851270
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0011657   -0.0863100    0.0839786
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0086352   -0.0414870    0.0587574
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0302130   -0.0218160    0.0822419
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0125745   -0.0395625    0.0647116
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0080139   -0.0412222    0.0572501
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0180294   -0.0399246    0.0759835
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0154532   -0.0492968    0.0802033
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           1                    4+                 0.0315872   -0.0353595    0.0985339
21-24 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.0426076   -0.0939847    0.0087696
21-24 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0287431   -0.0215846    0.0790707
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.1158950   -0.0395931    0.2713832
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0104318   -0.0954189    0.0745553
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0219707   -0.0804000    0.1243413
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.1240907   -0.2928932    0.0447119
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0747416   -0.1430309   -0.0064522
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0274081   -0.0933003    0.0384840
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0307725   -0.1109043    0.0493592
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0101215   -0.0946871    0.0744442
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0217048   -0.1103772    0.0669677
21-24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    4+                -0.0068790   -0.0893616    0.0756035
21-24 months   ki1000108-IRC              INDIA                          2                    4+                -0.0130746   -0.0949293    0.0687802
21-24 months   ki1000108-IRC              INDIA                          3                    4+                 0.0055457   -0.0887136    0.0998051
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.0074351   -0.0352820    0.0501521
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.0122426   -0.0401098    0.0645950
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.0285134   -0.0297643    0.0867912
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0265857   -0.0624698    0.0092984
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0216121   -0.0618278    0.0186037
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0035730   -0.0544499    0.0473038
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0419876   -0.0555023    0.1394774
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0076295   -0.0736748    0.0584157
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0260186   -0.0898812    0.0378439
21-24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           1                    4+                 0.0061181   -0.1475499    0.1597861
21-24 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0949538   -0.0411766    0.2310841
21-24 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0016560   -0.1292964    0.1259844


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0116922   -0.1570502    0.1336657
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0098849   -0.0688549    0.0490852
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0074013   -0.0169531    0.0317556
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0134473   -0.0389452    0.0120506
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0059130   -0.0080133    0.0198394
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0119965   -0.0481074    0.0241144
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0080316   -0.1156851    0.0996220
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                -0.0822520   -0.1584935   -0.0060105
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0150137   -0.0996390    0.0696116
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0053637   -0.0442953    0.0335679
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0085738   -0.0092388    0.0263863
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0706310   -0.0958544   -0.0454076
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0201984   -0.0315275   -0.0088693
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0317333   -0.0455590    0.1090256
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0063774   -0.0906938    0.1034485
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0198728   -0.0244749    0.0642205
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0142564   -0.0325905    0.0040776
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0050821   -0.0131914    0.0233557
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0091584   -0.0227056    0.0043887
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0080719   -0.0199864    0.0361302
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0873148   -0.2031928    0.0285631
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                 0.1029485    0.0163483    0.1895488
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0202840   -0.0327579    0.0733258
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0153524   -0.0496056    0.0189007
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0093387   -0.0050229    0.0237003
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0158066   -0.0434872    0.0118739
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0507246   -0.0685456   -0.0329035
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0111047   -0.0265236    0.0043143
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0303530   -0.0787492    0.0180433
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0385239   -0.1220516    0.0450038
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0290667   -0.0086830    0.0668165
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0020595   -0.0111902    0.0153092
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0064464   -0.0212027    0.0083100
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0030747   -0.0085611    0.0147104
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0270468   -0.0536573   -0.0004363
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0024795   -0.0479707    0.0529296
6-9 months     ki1000108-IRC              INDIA                          4+                   NA                 0.0503991   -0.0146038    0.1154019
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0443312   -0.0952683    0.0066058
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0443570   -0.0719561   -0.0167579
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0009617   -0.0118191    0.0137424
6-9 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0000223   -0.0253486    0.0253041
6-9 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0511316   -0.0697537   -0.0325094
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0147444   -0.0365347    0.0070459
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0473120   -0.1395643    0.0449403
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0002969   -0.0522741    0.0516802
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0034433   -0.0167176    0.0098310
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0037278   -0.0115395    0.0189951
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0016709   -0.0124491    0.0091073
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0193816   -0.0426001    0.0038369
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0381768   -0.1004566    0.0241031
9-12 months    ki1000108-IRC              INDIA                          4+                   NA                -0.0012267   -0.0645384    0.0620849
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0042275   -0.0478089    0.0562638
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0271106   -0.0512029   -0.0030184
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0062491   -0.0198561    0.0073579
9-12 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0175784   -0.0428812    0.0077244
9-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.0517291   -0.0724606   -0.0309976
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0058406   -0.0262801    0.0145989
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0289545   -0.0939748    0.0360659
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0085733   -0.0351495    0.0522961
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0020560   -0.0174875    0.0133755
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0062964   -0.0224453    0.0098525
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0071571   -0.0225804    0.0082662
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0248195   -0.0020255    0.0516645
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0342798   -0.0384807    0.1070403
12-15 months   ki1000108-IRC              INDIA                          4+                   NA                 0.0164612   -0.0338954    0.0668178
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0602441   -0.1305328    0.0100445
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0055420   -0.0330309    0.0219468
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0126442   -0.0014169    0.0267053
12-15 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0062329   -0.0192416    0.0317074
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0008781   -0.0285118    0.0302680
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0274303   -0.0442297    0.0990903
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0087124   -0.0338394    0.0512643
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0051480   -0.0090969    0.0193929
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0086555   -0.0269400    0.0096289
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0047050   -0.0212570    0.0118470
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0196709   -0.0056145    0.0449563
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0549096   -0.1367583    0.0269391
15-18 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0033100   -0.0621228    0.0555028
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0722064   -0.1274500   -0.0169629
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0279112   -0.0579911    0.0021686
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0010888   -0.0178608    0.0156832
15-18 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0056504   -0.0162699    0.0275707
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0128523   -0.0371956    0.0114909
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0409199   -0.1298686    0.0480288
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0326742   -0.0686110    0.0032625
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0162499   -0.0327085    0.0002086
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0071064   -0.0248332    0.0106205
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0012041   -0.0168829    0.0144747
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0003306   -0.0267378    0.0260766
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0542758   -0.1156605    0.0071089
18-21 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0847226   -0.1995708    0.0301257
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0366064   -0.0863969    0.0131840
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0093715   -0.0180483    0.0367912
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0081491   -0.0089988    0.0252971
18-21 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0118987   -0.0385699    0.0147725
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0058795   -0.0632507    0.0750097
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0152055   -0.0272938    0.0577049
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0055663   -0.0121575    0.0232901
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0044333   -0.0127969    0.0216634
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0080002   -0.0063918    0.0223922
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0296588   -0.0591649   -0.0001527
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0250218   -0.1023306    0.0522870
21-24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0086062   -0.0865869    0.0693746
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0124233   -0.0283022    0.0531488
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0189835   -0.0474790    0.0095119
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0061878   -0.0330863    0.0207107
21-24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0307202   -0.0571652    0.1186056
