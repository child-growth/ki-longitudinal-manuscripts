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

**Outcome Variable:** y_rate_len

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            148     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2             49     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3             28     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4+            99     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              3     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2             18     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3             43     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          4+            21     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1             67     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          2             62     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          3             27     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+            88     155  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             32     155  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          2             20     155  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          3             15     155  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           4+           131     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1             17     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           2             47     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           3             59     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           145     198  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             11     198  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     198  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     198  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            94     225  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     225  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             55     225  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63     225  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+             4      88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             33      88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             33      88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             18      88  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          4+            17     375  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          1            171     375  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          2            154     375  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          3             33     375  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+            22     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            458     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            101     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3             59     640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            345     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            183     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            102     721  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+           242     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1             34     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2            108     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3            125     509  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           4+            12      29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           1              6      29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           2              7      29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           3              4      29  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          4+            89    4653  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          1           3049    4653  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          2           1351    4653  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          3            164    4653  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+           675   19860  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1          12372   19860  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           5138   19860  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3           1675   19860  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+           107    2513  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1533    2513  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2            636    2513  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3            237    2513  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            145     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2             48     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3             27     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4+           126     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              4     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2             19     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3             59     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          4+            25     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1             84     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          2             75     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          3             46     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+           130     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             51     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          2             31     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          3             21     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           4+           137     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1             19     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           2             49     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           3             62     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           188     241  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             12     241  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     241  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     241  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           104     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             12     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             60     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63     239  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            12     307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            161     307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             86     307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             48     307  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          4+            17     395  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1            180     395  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          2            163     395  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          3             35     395  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+            21     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            425     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2             94     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3             58     598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            90     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            328     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            177     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            100     695  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+           225     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1             32     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2             96     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3            116     469  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           4+            78     214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           1             44     214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           2             54     214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           3             38     214  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          4+            85    4710  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          1           3056    4710  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          2           1396    4710  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          3            173    4710  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+           504   12572  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           7357   12572  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           3524   12572  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3           1187   12572  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+            79    1839  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1129    1839  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2            466    1839  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3            165    1839  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1            142     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2             45     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3             26     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4+           118     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              3     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2             18     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3             59     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          4+            25     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1             83     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          2             74     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          3             48     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+           128     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1             49     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          2             31     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          3             22     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           4+           130     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1             19     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           2             44     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           3             52     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           182     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             10     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             18     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           100     225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             55     225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             59     225  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     313  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            168     313  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             83     313  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             48     313  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          4+            17     405  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1            183     405  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          2            170     405  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          3             35     405  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+            20     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            404     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2             87     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3             54     565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            89     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            322     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            180     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3             97     688  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+           228     481  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1             33     481  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2             97     481  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3            123     481  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           4+            78     214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           1             44     214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           2             54     214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           3             38     214  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          4+            82    4321  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          1           2778    4321  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          2           1305    4321  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          3            156    4321  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+           154    3052  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1817    3052  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2            771    3052  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3            310    3052  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+            11     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            144     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2             43     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3             27     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4+           117     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              2     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2             18     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3             57     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          4+            25     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1             81     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          2             74     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          3             47     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+           128     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1             48     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          2             31     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          3             22     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           4+           123     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1             18     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           2             43     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           3             51     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           182     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             11     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             17     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           102     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             53     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             58     224  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     317  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            178     317  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2             81     317  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             44     317  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          4+            16     398  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1            181     398  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          2            167     398  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          3             34     398  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+            20     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            403     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2             89     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3             54     566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            88     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            310     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            178     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3             98     674  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+           223     469  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1             33     469  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2             97     469  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3            116     469  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           4+            77     212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           1             44     212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           2             53     212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           3             38     212  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          4+            74    3720  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          1           2349    3720  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          2           1162    3720  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          3            135    3720  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           172    3499  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2078    3499  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2            882    3499  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3            367    3499  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+            10     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1            135     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4+           113     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              2     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2             17     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3             52     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1             81     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          2             73     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          3             47     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+           129     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1             48     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          2             31     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          3             22     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           4+           116     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1             17     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           2             40     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           3             51     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           173     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             18     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           103     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             54     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             58     226  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            13     329  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            182     329  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             89     329  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             45     329  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          4+            15     388  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1            177     388  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          2            162     388  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          3             34     388  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+            20     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            370     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2             88     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3             54     532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            89     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            303     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            175     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             93     660  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+           220     469  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1             34     469  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2            102     469  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3            113     469  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           4+            70     199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           1             41     199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           2             51     199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           3             37     199  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           167    3547  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2106    3547  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2            910    3547  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3            364    3547  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+            10     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1            134     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2             41     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4+           108     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              1     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2             17     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3             49     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1             82     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          2             72     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          3             47     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+           127     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1             47     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          2             31     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          3             22     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           4+           112     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1             17     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           2             37     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           3             47     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           172     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           101     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             10     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             48     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             58     217  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            11     321  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            172     321  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             90     321  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             48     321  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          4+            15     380  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1            172     380  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          2            159     380  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          3             34     380  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            363     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2             87     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3             56     528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            84     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            268     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            165     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             87     604  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+           222     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1             35     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2            106     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3            117     480  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           4+            67     189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           1             36     189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           2             49     189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           3             37     189  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           179    3548  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2129    3548  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2            898    3548  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3            342    3548  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1            131     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4+           104     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              0     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2             16     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3             47     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1             82     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          2             72     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          3             47     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+           127     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1             47     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          2             31     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          3             22     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           4+           110     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1             16     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           2             32     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           3             44     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           178     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             22     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            96     204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             44     204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             55     204  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            11     305  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            165     305  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             82     305  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             47     305  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          4+            15     377  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1            169     377  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          2            161     377  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          3             32     377  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+            21     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            377     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2             88     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3             55     541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            83     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            237     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            148     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     546  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+           204     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1             30     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2            102     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3            109     445  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           4+            66     183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           1             34     183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           2             47     183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           3             36     183  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            130     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2             39     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4+           102     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              0     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2             15     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3             48     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1             82     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          2             73     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          3             46     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1             47     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          2             31     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          3             22     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           4+           105     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1             15     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           2             28     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           3             41     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           181     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             22     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            95     204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             46     204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             54     204  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            12     308  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            169     308  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             83     308  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             44     308  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          4+            15     387  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1            175     387  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          2            163     387  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          3             34     387  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            18     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            327     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2             80     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3             46     471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            81     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            205     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            132     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             72     490  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+           161     342  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1             25     342  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2             74     342  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3             82     342  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           4+            10      38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           1              7      38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           2             12      38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           3              9      38  y_rate_len       


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
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
![](/tmp/02a5dda0-d372-4326-9122-a461a3fb69ca/e01c01eb-a82d-427a-9e0f-8d36dc546eb1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/02a5dda0-d372-4326-9122-a461a3fb69ca/e01c01eb-a82d-427a-9e0f-8d36dc546eb1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/02a5dda0-d372-4326-9122-a461a3fb69ca/e01c01eb-a82d-427a-9e0f-8d36dc546eb1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                3.2449680   2.9729213   3.5170147
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.3461637   3.2604564   3.4318709
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                3.3500521   3.2006967   3.4994074
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                3.4676518   3.2866207   3.6486828
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                3.2011299   2.9092726   3.4929872
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.2952461   3.1379394   3.4525527
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                3.3264274   3.1926519   3.4602030
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                3.2429878   2.9727654   3.5132101
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                3.6065047   3.4840219   3.7289875
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.6104806   3.4469920   3.7739692
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                3.7397237   3.4402443   4.0392030
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                3.4923364   3.0804572   3.9042157
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                3.1116194   3.0267678   3.1964711
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.7863843   2.4688150   3.1039535
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                3.1001731   2.9574205   3.2429257
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                3.0586317   2.9060118   3.2112515
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                3.1852272   3.0575982   3.3128561
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.1237099   2.7047220   3.5426977
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                3.1482300   2.7274260   3.5690341
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                3.1691839   2.8776168   3.4607511
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                3.2473358   3.1301267   3.3645449
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2318888   2.9121411   3.5516366
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                3.2264241   3.0789806   3.3738676
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                3.3373166   3.1690654   3.5055679
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                2.9072736   2.4249358   3.3896115
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.1417586   2.9833175   3.3001997
0-3 months     ki1000108-IRC              INDIA                          2                    NA                3.1350057   2.9501005   3.3199108
0-3 months     ki1000108-IRC              INDIA                          3                    NA                3.2519122   2.8497549   3.6540696
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                3.4946714   3.2472511   3.7420918
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.2397560   3.1956032   3.2839089
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                3.3013313   3.2150100   3.3876525
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                3.2721924   3.1553801   3.3890047
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                3.1003187   3.0165557   3.1840816
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.1864220   3.1293273   3.2435168
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                3.0795419   3.0057881   3.1532957
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                3.0996545   3.0087361   3.1905730
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                3.5666349   3.4906282   3.6426417
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                3.5736201   3.3620865   3.7851538
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                3.5982594   3.4949206   3.7015983
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                3.6634942   3.5650558   3.7619327
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                3.6244399   3.5528706   3.6960091
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.4567198   3.4353030   3.4781366
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                3.5617285   3.5292414   3.5942156
0-3 months     ki1135781-COHORTS          INDIA                          3                    NA                3.5707354   3.4835503   3.6579205
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                3.6702980   3.6301547   3.7104413
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.6586534   3.6457463   3.6715606
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.6822398   3.6634652   3.7010143
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                3.6627866   3.6300764   3.6954968
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                2.7642465   2.4500182   3.0784748
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.0251648   2.9580723   3.0922574
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                3.0336058   2.9315625   3.1356491
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                2.9389786   2.7639153   3.1140420
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                1.8383680   1.6016447   2.0750913
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9247190   1.8584845   1.9909534
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.9736586   1.8638873   2.0834300
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.9170509   1.7479596   2.0861422
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                1.8787755   1.6767392   2.0808118
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.8905967   1.7742042   2.0069892
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.8616851   1.7624201   1.9609501
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                1.9327413   1.7801826   2.0852999
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                2.0091302   1.9348166   2.0834438
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.9291616   1.7868684   2.0714549
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.8891406   1.7230488   2.0552325
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                1.8939987   1.6994615   2.0885358
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                1.9191641   1.8364846   2.0018435
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.3078113   2.0600642   2.5555583
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                2.0648155   1.8797144   2.2499165
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                2.1072847   1.9611059   2.2534635
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                1.9887959   1.8951241   2.0824677
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.9144280   1.6425215   2.1863345
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                2.0779585   1.7865966   2.3693204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.8874857   1.6141258   2.1608455
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.8624979   1.7654605   1.9595354
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8431230   1.4282854   2.2579605
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.8092581   1.6587216   1.9597946
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8140152   1.6873761   1.9406543
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                2.0677152   1.5100748   2.6253557
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.8106454   1.6697225   1.9515684
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.7262946   1.5323880   1.9202012
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.8357935   1.5719172   2.0996698
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                1.9227210   1.5675267   2.2779152
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8334974   1.7464101   1.9205847
3-6 months     ki1000108-IRC              INDIA                          2                    NA                1.9287766   1.8222195   2.0353336
3-6 months     ki1000108-IRC              INDIA                          3                    NA                1.8136099   1.5869689   2.0402509
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                2.0248220   1.8545489   2.1950950
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9634887   1.9230809   2.0038966
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9578000   1.8729079   2.0426922
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                2.0120377   1.8961036   2.1279719
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                2.0666188   1.9590698   2.1741677
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9556363   1.9079441   2.0033285
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                2.0123984   1.9343730   2.0904237
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                2.1086927   1.9973040   2.2200814
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                1.6758952   1.6188170   1.7329735
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.7407400   1.6107357   1.8707444
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.7562726   1.6754329   1.8371123
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                1.7302140   1.6427508   1.8176772
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                2.0360933   1.9558314   2.1163552
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                1.9675418   1.8677266   2.0673570
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                2.1963392   2.0991221   2.2935564
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                2.1669180   2.0394306   2.2944054
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                1.9195405   1.8530674   1.9860136
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.8387759   1.8203829   1.8571688
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                1.8962432   1.8694313   1.9230550
3-6 months     ki1135781-COHORTS          INDIA                          3                    NA                1.8433196   1.7710791   1.9155601
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                1.9039441   1.8633312   1.9445571
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9263385   1.9122530   1.9404240
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9096362   1.8889101   1.9303623
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.9312333   1.8980891   1.9643776
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                2.0499667   1.8822164   2.2177170
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8881333   1.8490249   1.9272418
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.8757299   1.8240542   1.9274056
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.9749235   1.8830143   2.0668327
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                1.4212656   1.2880722   1.5544590
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.2355052   1.1837566   1.2872538
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.2373164   1.1392960   1.3353368
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.2667133   1.1606604   1.3727663
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                1.1320253   0.9770796   1.2869710
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.2835149   1.1764116   1.3906181
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.2709987   1.1856729   1.3563245
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                1.1795030   1.0859088   1.2730971
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                1.3695212   1.3074434   1.4315990
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.3167881   1.2192375   1.4143387
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.4036514   1.2976934   1.5096095
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                1.3055002   1.1687118   1.4422887
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   NA                1.3007565   1.2312490   1.3702640
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.4974514   1.2750820   1.7198208
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                1.3454937   1.2086992   1.4822882
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                1.2919775   1.1751255   1.4088294
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                1.3925150   1.3200546   1.4649753
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.1753174   0.8065197   1.5441152
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.4874112   1.1072576   1.8675648
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.3088294   1.1124088   1.5052499
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.1846251   1.0484244   1.3208259
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2080117   0.6945801   1.7214434
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.1646047   1.0458670   1.2833424
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.2151653   1.0784168   1.3519137
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                1.0285662   0.7715785   1.2855538
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.2582922   1.1445689   1.3720155
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.2344067   1.0944735   1.3743399
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.1099045   0.9100659   1.3097430
6-9 months     ki1000108-IRC              INDIA                          4+                   NA                1.1885330   0.9692961   1.4077699
6-9 months     ki1000108-IRC              INDIA                          1                    NA                1.3476534   1.2839925   1.4113143
6-9 months     ki1000108-IRC              INDIA                          2                    NA                1.3979905   1.3140852   1.4818958
6-9 months     ki1000108-IRC              INDIA                          3                    NA                1.3220942   1.1223638   1.5218246
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                1.3979468   1.2232994   1.5725941
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.2715392   1.2420996   1.3009789
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.3136014   1.2463037   1.3808991
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.3313685   1.2492113   1.4135257
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                1.3689948   1.2719718   1.4660177
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.3578080   1.3154409   1.4001751
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                1.2783641   1.2188439   1.3378843
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                1.2966242   1.2156616   1.3775869
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                1.2934804   1.2300911   1.3568697
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.3109705   1.2134719   1.4084691
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.3322397   1.2326142   1.4318652
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                1.3517238   1.2761763   1.4272713
6-9 months     ki1114097-CONTENT          PERU                           4+                   NA                1.4474207   1.3759489   1.5188925
6-9 months     ki1114097-CONTENT          PERU                           1                    NA                1.3865907   1.2687237   1.5044577
6-9 months     ki1114097-CONTENT          PERU                           2                    NA                1.2875643   1.1834711   1.3916574
6-9 months     ki1114097-CONTENT          PERU                           3                    NA                1.4699562   1.3865131   1.5533994
6-9 months     ki1135781-COHORTS          INDIA                          4+                   NA                1.2879925   1.2362519   1.3397330
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                1.1658384   1.1493606   1.1823161
6-9 months     ki1135781-COHORTS          INDIA                          2                    NA                1.2008012   1.1769239   1.2246784
6-9 months     ki1135781-COHORTS          INDIA                          3                    NA                1.2354793   1.1759351   1.2950236
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                1.4187421   1.3357220   1.5017622
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.3130340   1.2864497   1.3396183
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.3106535   1.2710148   1.3502923
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.3703782   1.3016258   1.4391306
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.8988528   0.7030022   1.0947034
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9900254   0.9416271   1.0384237
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.0004148   0.9045592   1.0962705
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.9641509   0.8490338   1.0792680
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                0.8835360   0.7865055   0.9805665
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.0139361   0.9483749   1.0794973
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                0.9486522   0.8852227   1.0120818
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                1.0298794   0.9431238   1.1166350
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                1.0673587   1.0099917   1.1247257
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.1354738   1.0329370   1.2380105
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                1.1156602   1.0306425   1.2006780
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                1.0800948   0.9577340   1.2024555
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                1.1545366   1.0821633   1.2269099
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.9694180   0.8217460   1.1170901
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                1.0144300   0.8955702   1.1332898
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                1.0823261   0.9704078   1.1942444
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                1.0232833   0.9514319   1.0951348
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.0103021   0.7914299   1.2291743
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.0988892   0.8327435   1.3650349
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8537516   0.5829660   1.1245373
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8233388   0.6848668   0.9618108
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8114191   0.3327182   1.2901200
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7904439   0.6323823   0.9485056
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7941843   0.6535206   0.9348480
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                1.1908079   0.8508371   1.5307787
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8630738   0.7781427   0.9480050
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.9447649   0.7769165   1.1126133
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.9565230   0.8194976   1.0935483
9-12 months    ki1000108-IRC              INDIA                          4+                   NA                0.9422158   0.7472358   1.1371958
9-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1249885   1.0690097   1.1809673
9-12 months    ki1000108-IRC              INDIA                          2                    NA                1.1554799   1.0912865   1.2196734
9-12 months    ki1000108-IRC              INDIA                          3                    NA                1.0180004   0.8838544   1.1521465
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                1.0553401   0.9069321   1.2037481
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.0434192   1.0119349   1.0749035
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.0528560   0.9778618   1.1278501
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.0978877   1.0104848   1.1852905
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                1.1291697   1.0568915   1.2014478
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.1178448   1.0767655   1.1589241
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                1.1017850   1.0492447   1.1543254
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                1.1669889   1.0965951   1.2373828
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                1.0093016   0.9601409   1.0584623
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9516340   0.8409246   1.0623434
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.9327090   0.8478368   1.0175812
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                1.0579969   1.0063306   1.1096633
9-12 months    ki1114097-CONTENT          PERU                           4+                   NA                1.2095797   1.1378418   1.2813175
9-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.1385339   1.0602736   1.2167942
9-12 months    ki1114097-CONTENT          PERU                           2                    NA                1.2026710   1.1113330   1.2940089
9-12 months    ki1114097-CONTENT          PERU                           3                    NA                1.2677291   1.1889839   1.3464742
9-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                1.0989281   1.0393934   1.1584627
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                0.9609437   0.9429684   0.9789189
9-12 months    ki1135781-COHORTS          INDIA                          2                    NA                1.0126914   0.9866200   1.0387628
9-12 months    ki1135781-COHORTS          INDIA                          3                    NA                1.0595996   0.9906692   1.1285300
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                1.0490707   0.9866959   1.1114455
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.0645787   1.0416498   1.0875077
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.0849204   1.0478304   1.1220104
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.0866152   1.0272341   1.1459963
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                1.0292914   0.8600585   1.1985242
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9033615   0.8535513   0.9531717
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8718183   0.7803519   0.9632848
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.9738884   0.8408037   1.1069731
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                1.0346296   0.9155377   1.1537214
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8642314   0.7961923   0.9322704
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.9378086   0.8715868   1.0040304
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.8842477   0.8000817   0.9684136
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.9571714   0.9066043   1.0077384
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8519689   0.7663234   0.9376144
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                1.0612919   0.9296748   1.1929090
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.9870315   0.8674105   1.1066526
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.8663831   0.7997491   0.9330170
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.9032561   0.6721405   1.1343717
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8880336   0.7833161   0.9927511
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.9509494   0.8728090   1.0290899
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.9153471   0.8474785   0.9832157
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.2105342   0.9654823   1.4555861
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.8539843   0.6516005   1.0563680
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8610780   0.6823563   1.0397997
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8690574   0.7721614   0.9659534
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0941546   0.7903204   1.3979889
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7889512   0.6404251   0.9374772
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.9061383   0.7964401   1.0158364
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.8599007   0.6998599   1.0199415
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8443304   0.7563254   0.9323354
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.8340957   0.6734444   0.9947470
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.9848028   0.7739258   1.1956798
12-15 months   ki1000108-IRC              INDIA                          4+                   NA                0.8223633   0.6833811   0.9613454
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.9406005   0.8868169   0.9943840
12-15 months   ki1000108-IRC              INDIA                          2                    NA                0.9825919   0.9076711   1.0575128
12-15 months   ki1000108-IRC              INDIA                          3                    NA                0.9870916   0.8326024   1.1415808
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                1.0302403   0.8792593   1.1812213
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9476890   0.9157583   0.9796197
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.9997817   0.9367552   1.0628081
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.9583027   0.8768627   1.0397428
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                1.0115954   0.9423920   1.0807988
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9578199   0.9206642   0.9949756
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.9654352   0.9182842   1.0125863
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.9884126   0.9178976   1.0589277
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.9007405   0.8536884   0.9477927
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8334878   0.7410166   0.9259590
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8683697   0.8171952   0.9195442
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.8652928   0.8098478   0.9207379
12-15 months   ki1114097-CONTENT          PERU                           4+                   NA                0.9156676   0.8394365   0.9918986
12-15 months   ki1114097-CONTENT          PERU                           1                    NA                0.9425588   0.8460391   1.0390785
12-15 months   ki1114097-CONTENT          PERU                           2                    NA                0.9306950   0.8518100   1.0095800
12-15 months   ki1114097-CONTENT          PERU                           3                    NA                0.9283459   0.8237360   1.0329559
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.9353071   0.8520949   1.0185194
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.9358039   0.9152054   0.9564025
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.9405186   0.9103230   0.9707142
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.9755545   0.9287973   1.0223116
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.9464624   0.7693903   1.1235345
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8190460   0.7749777   0.8631143
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8536590   0.7598734   0.9474446
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8933666   0.7695986   1.0171347
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.7382025   0.6352705   0.8411345
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8783421   0.8142519   0.9424323
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.7811314   0.7219831   0.8402798
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.9088835   0.8312186   0.9865484
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.8243860   0.7716200   0.8771520
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8097254   0.7178167   0.9016341
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.7090490   0.5641908   0.8539072
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8481685   0.6924983   1.0038387
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.8649744   0.8056419   0.9243070
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.7571515   0.6148606   0.8994425
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8054057   0.7206406   0.8901709
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.9004083   0.7948003   1.0060162
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.8845926   0.8241794   0.9450059
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9051377   0.6739413   1.1363342
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.9416519   0.7375234   1.1457805
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8455011   0.6291990   1.0618032
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.6746328   0.5871795   0.7620861
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5365325   0.1246375   0.9484276
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7198253   0.5837235   0.8559272
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6615234   0.5423880   0.7806588
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.9748042   0.7824125   1.1671959
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6793967   0.6020550   0.7567384
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.7952665   0.6556377   0.9348953
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.7709792   0.5839319   0.9580265
15-18 months   ki1000108-IRC              INDIA                          4+                   NA                0.7471236   0.5264321   0.9678151
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.8555365   0.7907445   0.9203285
15-18 months   ki1000108-IRC              INDIA                          2                    NA                0.8621751   0.8033917   0.9209584
15-18 months   ki1000108-IRC              INDIA                          3                    NA                0.8691754   0.7658634   0.9724873
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.9017495   0.7549039   1.0485952
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8595099   0.8307419   0.8882778
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8197708   0.7614961   0.8780455
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.8628591   0.7839109   0.9418073
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.9461785   0.8886292   1.0037278
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9106136   0.8727560   0.9484712
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.9031103   0.8590506   0.9471701
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.9627263   0.8969279   1.0285247
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.7159631   0.6583776   0.7735485
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7318158   0.6394183   0.8242133
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.7884445   0.7294279   0.8474611
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.7945017   0.7240193   0.8649842
15-18 months   ki1114097-CONTENT          PERU                           4+                   NA                1.0023047   0.9186792   1.0859303
15-18 months   ki1114097-CONTENT          PERU                           1                    NA                0.9808381   0.8832931   1.0783832
15-18 months   ki1114097-CONTENT          PERU                           2                    NA                1.0286497   0.9361424   1.1211569
15-18 months   ki1114097-CONTENT          PERU                           3                    NA                0.9079606   0.8038126   1.0121086
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.8842093   0.8088303   0.9595882
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8678394   0.8467248   0.8889541
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.8360022   0.8034015   0.8686028
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.8676388   0.8180838   0.9171938
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.9044252   0.7303224   1.0785279
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7844983   0.7448082   0.8241884
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8450494   0.7503742   0.9397247
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8433822   0.7452912   0.9414732
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.9402042   0.8525534   1.0278549
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9046164   0.8433761   0.9658568
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8404560   0.7771085   0.9038036
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.8593071   0.7812464   0.9373678
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.8551399   0.8051364   0.9051434
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8196203   0.7362068   0.9030339
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8154591   0.7192899   0.9116282
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.6024610   0.4652385   0.7396836
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.8918874   0.8295868   0.9541879
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.7605860   0.6241614   0.8970105
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.9054675   0.7935426   1.0173925
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.7711032   0.6686960   0.8735103
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.7942762   0.7289334   0.8596190
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7761812   0.5512918   1.0010706
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.7524938   0.5809833   0.9240043
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.7095417   0.5138766   0.9052067
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7435774   0.6524664   0.8346885
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7995370   0.3703102   1.2287638
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6799996   0.5289758   0.8310234
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7857515   0.6534590   0.9180439
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.7384563   0.4098332   1.0670794
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6503680   0.5688664   0.7318696
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.7796060   0.6524144   0.9067975
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.6534260   0.4621974   0.8446547
18-21 months   ki1000108-IRC              INDIA                          4+                   NA                0.9962715   0.7718519   1.2206911
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.7418696   0.6832593   0.8004799
18-21 months   ki1000108-IRC              INDIA                          2                    NA                0.7832392   0.7261718   0.8403065
18-21 months   ki1000108-IRC              INDIA                          3                    NA                0.7060150   0.5628470   0.8491831
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.9797066   0.8542968   1.1051164
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8197749   0.7907096   0.8488402
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8540909   0.7964678   0.9117140
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.8831467   0.8131617   0.9531317
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.8608944   0.7958344   0.9259544
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.7589292   0.7223522   0.7955062
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.7963276   0.7472764   0.8453788
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.8413007   0.7858932   0.8967082
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.8924397   0.8333794   0.9514999
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8535762   0.7426132   0.9645391
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8892062   0.8443679   0.9340444
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.9290115   0.8554939   1.0025291
18-21 months   ki1114097-CONTENT          PERU                           4+                   NA                0.9568311   0.8786874   1.0349749
18-21 months   ki1114097-CONTENT          PERU                           1                    NA                0.8807320   0.7654337   0.9960304
18-21 months   ki1114097-CONTENT          PERU                           2                    NA                0.8602876   0.7822711   0.9383040
18-21 months   ki1114097-CONTENT          PERU                           3                    NA                0.9521656   0.8678144   1.0365168
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.7476352   0.6444667   0.8508037
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7570004   0.7127601   0.8012408
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8334418   0.7440368   0.9228469
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.7452611   0.6330163   0.8575059
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.7516579   0.6501469   0.8531690
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8449794   0.7900078   0.8999511
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8379826   0.7781670   0.8977983
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.8203593   0.7611617   0.8795570
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.7913635   0.7357491   0.8469780
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7359099   0.6438869   0.8279329
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.7903511   0.6830964   0.8976059
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8426769   0.7033196   0.9820342
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.7337355   0.6738503   0.7936207
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.9071526   0.6407697   1.1735355
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.7771470   0.6312610   0.9230330
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.7527859   0.6360722   0.8694995
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.8111774   0.7576108   0.8647441
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8243290   0.6067254   1.0419326
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.9766319   0.7992386   1.1540253
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.0784032   0.7170024   1.4398039
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7905556   0.6956631   0.8854481
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6457188   0.3143334   0.9771041
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5517181   0.3978775   0.7055586
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7475741   0.6536756   0.8414726
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.5792100   0.2896623   0.8687576
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7291628   0.6504649   0.8078607
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.6894285   0.5570391   0.8218178
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.6945322   0.5246734   0.8643910
21-24 months   ki1000108-IRC              INDIA                          4+                   NA                0.6759127   0.5157652   0.8360601
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6815686   0.6217167   0.7414205
21-24 months   ki1000108-IRC              INDIA                          2                    NA                0.7711458   0.7040167   0.8382748
21-24 months   ki1000108-IRC              INDIA                          3                    NA                0.5970277   0.4721495   0.7219059
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.8325680   0.6908535   0.9742825
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7622127   0.7318006   0.7926248
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.7636328   0.7040097   0.8232559
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.7341074   0.6357925   0.8324223
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.7783331   0.7184536   0.8382125
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8125186   0.7733421   0.8516952
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.7930473   0.7435721   0.8425225
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.8272320   0.7621558   0.8923082
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.8130094   0.7353934   0.8906254
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6022247   0.5085454   0.6959040
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8028649   0.7181748   0.8875550
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.8019024   0.7137160   0.8900888
21-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.8723352   0.7299557   1.0147147
21-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.8823901   0.6161633   1.1486170
21-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.9111434   0.7974266   1.0248603
21-24 months   ki1114097-CONTENT          PERU                           3                    NA                1.0776957   0.9629678   1.1924236


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3306152   3.2408417   3.4203888
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6214116   3.5288934   3.7139297
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0720111   3.0070171   3.1370050
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1667059   3.0657224   3.2676894
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2602600   3.1826202   3.3378997
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1339697   3.0229598   3.2449797
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.4941028   3.4773973   3.5108084
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6644274   3.6541952   3.6746596
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.0081001   2.9551156   3.0610847
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9768255   1.8961556   2.0574955
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8759294   1.8124309   1.9394280
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8574178   1.8434023   1.8714334
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9202801   1.9098197   1.9307405
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3707119   1.3221131   1.4193108
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.1816465   1.1687340   1.1945589
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.3241671   1.3034835   1.3448507
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1267660   1.0874844   1.1660476
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9847780   0.9708596   0.9986963
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0714466   1.0534634   1.0894298
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9580320   0.9164204   0.9996435
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9414130   0.9256041   0.9572219
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8591967   0.8198344   0.8985590
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8599047   0.8433807   0.8764287
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7608543   0.7223844   0.7993242
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7088420   0.6678130   0.7498711
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9350807   0.8543561   1.0158053


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.1011957   -0.1838160    0.3862074
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.1050841   -0.2059134    0.4160816
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.2226838   -0.1043731    0.5497408
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0941162   -0.2396842    0.4279165
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    4+                 0.1252975   -0.1963766    0.4469717
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0418579   -0.3582553    0.4419710
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0039759   -0.2012878    0.2092395
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.1332189   -0.1909409    0.4573787
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1141683   -0.5450887    0.3167521
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    4+                -0.3252352   -0.6543047    0.0038343
0-3 months     ki0047075b-MAL-ED          PERU                           2                    4+                -0.0114463   -0.1781590    0.1552664
0-3 months     ki0047075b-MAL-ED          PERU                           3                    4+                -0.0529878   -0.2280607    0.1220851
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0615173   -0.5019243    0.3788897
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0369971   -0.4817006    0.4077063
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0160432   -0.3385003    0.3064138
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0154470   -0.3561373    0.3252433
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0209116   -0.2093787    0.1675554
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0899809   -0.1150889    0.2950507
0-3 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    4+                 0.2344850   -0.2730130    0.7419830
0-3 months     ki1000108-IRC              INDIA                          2                    4+                 0.2277320   -0.2915560    0.7470201
0-3 months     ki1000108-IRC              INDIA                          3                    4+                 0.3446386   -0.2824007    0.9716778
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.2549154   -0.5061094   -0.0037215
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.1933402   -0.4552048    0.0685244
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.2224790   -0.4960569    0.0510988
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                 0.0861034   -0.0154276    0.1876344
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0207768   -0.1325145    0.0909610
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0006641   -0.1244874    0.1231592
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0069852   -0.2179372    0.2319076
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0316245   -0.0961695    0.1594185
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0968593   -0.0267770    0.2204956
0-3 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.1677200   -0.2422657   -0.0931744
0-3 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0627113   -0.1411694    0.0157467
0-3 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0537045   -0.1664628    0.0590539
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.0116446   -0.0531214    0.0298321
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                 0.0119418   -0.0305878    0.0544713
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0075114   -0.0590995    0.0440767
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.2609183   -0.0601446    0.5819813
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.2693593   -0.0628635    0.6015821
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.1747321   -0.1867463    0.5362106
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0863510   -0.1604268    0.3331287
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.1352906   -0.1262189    0.3968002
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.0786829   -0.2128320    0.3701977
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0118212   -0.2223068    0.2459492
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0170904   -0.2427459    0.2085651
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0539657   -0.1993541    0.3072856
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0799686   -0.2420203    0.0820831
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.1199896   -0.3028400    0.0628609
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1151315   -0.3238142    0.0935511
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    4+                 0.3886472    0.1269860    0.6503084
3-6 months     ki0047075b-MAL-ED          PERU                           2                    4+                 0.1456514   -0.0577326    0.3490354
3-6 months     ki0047075b-MAL-ED          PERU                           3                    4+                 0.1881206    0.0197191    0.3565221
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0743680   -0.3625857    0.2138498
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0891625   -0.2173985    0.3957236
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.1013103   -0.3908416    0.1882211
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0193750   -0.4456896    0.4069396
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0532398   -0.2323501    0.1258704
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0484828   -0.2083146    0.1113491
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.2570698   -0.8324892    0.3183496
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.3414207   -0.9323468    0.2495055
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.2319218   -0.8487250    0.3848815
3-6 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    4+                -0.0892235   -0.4562943    0.2778473
3-6 months     ki1000108-IRC              INDIA                          2                    4+                 0.0060556   -0.3654827    0.3775938
3-6 months     ki1000108-IRC              INDIA                          3                    4+                -0.1091110   -0.5320051    0.3137831
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0613332   -0.2363444    0.1136780
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0670220   -0.2574027    0.1233587
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0127843   -0.2188017    0.1932331
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.1109825   -0.2286901    0.0067252
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0542204   -0.1871404    0.0786996
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0420739   -0.1127259    0.1968737
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0648448   -0.0772616    0.2069513
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0803774   -0.0186154    0.1793702
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0543188   -0.0500395    0.1586770
3-6 months     ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    4+                -0.0685515   -0.1970455    0.0599425
3-6 months     ki1114097-CONTENT          PERU                           2                    4+                 0.1602459    0.0340549    0.2864369
3-6 months     ki1114097-CONTENT          PERU                           3                    4+                 0.1308247   -0.0199397    0.2815891
3-6 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.0807646   -0.1496304   -0.0118989
3-6 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0232973   -0.0948871    0.0482925
3-6 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0762209   -0.1743054    0.0218636
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                 0.0223944   -0.0209739    0.0657627
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                 0.0056921   -0.0392469    0.0506310
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                 0.0272892   -0.0236861    0.0782645
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.1618334   -0.3341712    0.0105044
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1742368   -0.3501955    0.0017219
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0750432   -0.2667338    0.1166474
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.1857604   -0.3286849   -0.0428359
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1839492   -0.3494638   -0.0184346
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.1545523   -0.3249207    0.0158161
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    4+                 0.1514896   -0.0373515    0.3403306
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    4+                 0.1389734   -0.0378986    0.3158453
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0474777   -0.1330258    0.2279811
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0527331   -0.1684719    0.0630057
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0341302   -0.0886460    0.1569064
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0640210   -0.2143058    0.0862639
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    4+                 0.1966949   -0.0376074    0.4309972
6-9 months     ki0047075b-MAL-ED          PERU                           2                    4+                 0.0447372   -0.1090488    0.1985233
6-9 months     ki0047075b-MAL-ED          PERU                           3                    4+                -0.0087790   -0.1454435    0.1278855
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.2171975   -0.5939050    0.1595099
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0948963   -0.2932316    0.4830241
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0836856   -0.2932290    0.1258579
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0233866   -0.5084092    0.5551823
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0200205   -0.2004285    0.1603875
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0305401   -0.1623706    0.2234509
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                 0.2297260   -0.0520147    0.5114667
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.2058405   -0.0865099    0.4981909
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0813383   -0.2439738    0.4066504
6-9 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    4+                 0.1591204   -0.0690953    0.3873361
6-9 months     ki1000108-IRC              INDIA                          2                    4+                 0.2094575   -0.0252125    0.4441275
6-9 months     ki1000108-IRC              INDIA                          3                    4+                 0.1335612   -0.1633139    0.4304363
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.1264075   -0.3036178    0.0508028
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0843454   -0.2714250    0.1027343
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0665783   -0.2594806    0.1263240
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0111867   -0.1173735    0.0950001
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0906307   -0.2044524    0.0231911
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0723705   -0.1989306    0.0541895
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0174901   -0.0994829    0.1344631
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0387593   -0.0798571    0.1573757
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0582434   -0.0407921    0.1572790
6-9 months     ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           1                    4+                -0.0608300   -0.1985275    0.0768675
6-9 months     ki1114097-CONTENT          PERU                           2                    4+                -0.1598564   -0.2861893   -0.0335235
6-9 months     ki1114097-CONTENT          PERU                           3                    4+                 0.0225355   -0.0874226    0.1324936
6-9 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.1221541   -0.1764643   -0.0678439
6-9 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0871913   -0.1441926   -0.0301901
6-9 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0525131   -0.1314171    0.0263908
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.1057081   -0.1923122   -0.0191040
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1080886   -0.1995256   -0.0166516
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0483639   -0.1572981    0.0605704
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0911726   -0.1106414    0.2929866
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.1015621   -0.1167037    0.3198278
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.0652981   -0.1622557    0.2928519
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    4+                 0.1304001    0.0131874    0.2476129
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0651162   -0.0506599    0.1808923
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    4+                 0.1463433    0.0165474    0.2761393
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0681150   -0.0494373    0.1856673
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0483015   -0.0543864    0.1509895
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0127361   -0.1225304    0.1480025
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.1851186   -0.3495980   -0.0206393
9-12 months    ki0047075b-MAL-ED          PERU                           2                    4+                -0.1401066   -0.2793759   -0.0008374
9-12 months    ki0047075b-MAL-ED          PERU                           3                    4+                -0.0722106   -0.2054226    0.0610015
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0129812   -0.2432830    0.2173205
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0756059   -0.2003698    0.3515816
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.1695317   -0.4499290    0.1108655
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0119196   -0.5101103    0.4862710
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0328948   -0.2436149    0.1778253
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0291544   -0.2268285    0.1685196
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.3277341   -0.6791456    0.0236775
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.2460430   -0.6250556    0.1329696
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.2342849   -0.6020359    0.1334661
9-12 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    4+                 0.1827727   -0.0211215    0.3866668
9-12 months    ki1000108-IRC              INDIA                          2                    4+                 0.2132642    0.0066908    0.4198375
9-12 months    ki1000108-IRC              INDIA                          3                    4+                 0.0757847   -0.1619999    0.3135692
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0119209   -0.1636668    0.1398249
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0024841   -0.1687630    0.1637947
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.0425476   -0.1296791    0.2147743
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0113249   -0.0945950    0.0719452
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0273846   -0.1168630    0.0620938
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0378193   -0.0631092    0.1387478
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0576676   -0.1790512    0.0637161
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0765926   -0.1747781    0.0215929
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0486953   -0.0225631    0.1199538
9-12 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           1                    4+                -0.0710458   -0.1769081    0.0348165
9-12 months    ki1114097-CONTENT          PERU                           2                    4+                -0.0069087   -0.1233743    0.1095569
9-12 months    ki1114097-CONTENT          PERU                           3                    4+                 0.0581494   -0.0481214    0.1644201
9-12 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.1379844   -0.2001504   -0.0758184
9-12 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.0862366   -0.1512013   -0.0212719
9-12 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.0393285   -0.1304286    0.0517717
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.0155080   -0.0516185    0.0826345
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.0358497   -0.0372473    0.1089467
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0375445   -0.0473168    0.1224059
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.1259298   -0.3023583    0.0504986
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1574730   -0.3499550    0.0350089
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0554030   -0.2706890    0.1598830
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    4+                -0.1703982   -0.3077609   -0.0330355
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0968210   -0.2332974    0.0396555
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.1503819   -0.2964686   -0.0042952
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1052025   -0.2047324   -0.0056726
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.1041205   -0.0369070    0.2451480
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0298601   -0.1000675    0.1597878
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    4+                 0.0368730   -0.2037208    0.2774669
12-15 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.0216506   -0.1013769    0.1446780
12-15 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0845664   -0.0195144    0.1886472
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.2951871    0.0403160    0.5500582
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0613628   -0.2746818    0.1519562
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0542691   -0.2456550    0.1371168
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.2250973   -0.0938411    0.5440357
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0801062   -0.2579794    0.0977671
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0370809   -0.1096126    0.1837744
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0155702   -0.1987457    0.1676052
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0258050   -0.2517899    0.2001799
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.1249021   -0.1415982    0.3914024
12-15 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    4+                 0.1182372   -0.0312826    0.2677570
12-15 months   ki1000108-IRC              INDIA                          2                    4+                 0.1602287    0.0018882    0.3185692
12-15 months   ki1000108-IRC              INDIA                          3                    4+                 0.1647283   -0.0434887    0.3729453
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0825513   -0.2368164    0.0717138
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0304587   -0.1941364    0.1332191
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0719376   -0.2434205    0.0995453
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0537755   -0.1322686    0.0247176
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0461602   -0.1298530    0.0375326
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0231828   -0.1219611    0.0755955
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0672528   -0.1709824    0.0364769
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0323709   -0.1019659    0.0372241
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0354477   -0.1079044    0.0370090
12-15 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           1                    4+                 0.0268912   -0.0962384    0.1500208
12-15 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0150274   -0.0948699    0.1249247
12-15 months   ki1114097-CONTENT          PERU                           3                    4+                 0.0126784   -0.1171555    0.1425122
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.0004968   -0.0847968    0.0857904
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.0052115   -0.0826933    0.0931163
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0402473   -0.0553388    0.1358334
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.1274164   -0.3098961    0.0550633
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0928034   -0.2925513    0.1069445
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0530958   -0.2694748    0.1632833
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.1401396    0.0188579    0.2614213
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0429290   -0.0760433    0.1619012
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.1706810    0.0413670    0.2999949
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0146606   -0.1206390    0.0913178
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.1153370   -0.2695808    0.0389068
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0237825   -0.1394316    0.1869966
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.1078229   -0.2620711    0.0464252
15-18 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.0595687   -0.1630945    0.0439571
15-18 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0354338   -0.0856763    0.1565439
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.0205451   -0.2183340    0.2594242
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0570593   -0.1564843    0.2706029
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0390915   -0.2633866    0.1852035
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.1381003   -0.5598010    0.2836004
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0451925   -0.1174812    0.2078662
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0131094   -0.1610654    0.1348467
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.2954075   -0.5025734   -0.0882417
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1795377   -0.4181197    0.0590442
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.2038251   -0.4723546    0.0647044
15-18 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    4+                 0.1084129   -0.1219972    0.3388229
15-18 months   ki1000108-IRC              INDIA                          2                    4+                 0.1150515   -0.1139509    0.3440538
15-18 months   ki1000108-IRC              INDIA                          3                    4+                 0.1220518   -0.1217773    0.3658808
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0422397   -0.1918247    0.1073454
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0819788   -0.2399277    0.0759701
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0388904   -0.2055635    0.1277827
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0355649   -0.1044357    0.0333059
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0430682   -0.1154989    0.0293625
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0165477   -0.0708601    0.1039556
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0158528   -0.0929711    0.1246766
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0724815   -0.0103984    0.1553614
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0785387   -0.0125744    0.1696517
15-18 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           1                    4+                -0.0214666   -0.1500025    0.1070692
15-18 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0263449   -0.0988182    0.1515080
15-18 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0943441   -0.2285158    0.0398275
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0163698   -0.0944507    0.0617110
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0482071   -0.1297096    0.0332955
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0165704   -0.1082269    0.0750861
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.1199269   -0.2984971    0.0586433
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0593758   -0.2574349    0.1386834
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0610430   -0.2608504    0.1387644
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0355877   -0.1422923    0.0711168
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0997481   -0.2075814    0.0080851
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0808971   -0.1982926    0.0364984
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0355196   -0.1330380    0.0619988
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0396808   -0.1479390    0.0685774
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.2526789   -0.3985536   -0.1068041
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.1313014   -0.2816245    0.0190217
18-21 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.0135802   -0.1151939    0.1423543
18-21 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.1207842   -0.2414287   -0.0001396
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0180950   -0.2519933    0.2158034
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0417823   -0.2256862    0.1421215
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0847345   -0.2915041    0.1220350
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0559595   -0.3828307    0.4947498
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0635779   -0.2399565    0.1128007
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0421740   -0.1184576    0.2028057
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0880883   -0.4267383    0.2505617
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.0411497   -0.3109444    0.3932438
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0850302   -0.4659455    0.2958851
18-21 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    4+                -0.2544019   -0.4861288   -0.0226750
18-21 months   ki1000108-IRC              INDIA                          2                    4+                -0.2130323   -0.4444017    0.0183370
18-21 months   ki1000108-IRC              INDIA                          3                    4+                -0.2902565   -0.5564294   -0.0240835
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.1599317   -0.2885821   -0.0312813
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.1256157   -0.2635381    0.0123068
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0965599   -0.2402558    0.0471360
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.1019652   -0.1767473   -0.0271832
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0645668   -0.1462276    0.0170939
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0195937   -0.1049622    0.0657748
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0388635   -0.1631268    0.0853998
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0032335   -0.0763671    0.0699001
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0365719   -0.0595810    0.1327247
18-21 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           1                    4+                -0.0760991   -0.2157520    0.0635538
18-21 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0965436   -0.2071615    0.0140743
18-21 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0046655   -0.1196167    0.1102857
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0093652   -0.1029467    0.1216771
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0858066   -0.0507202    0.2223335
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0023741   -0.1548464    0.1500982
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0933215   -0.0222901    0.2089331
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0863247   -0.0314591    0.2041086
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0687014   -0.0485075    0.1859102
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0554537   -0.1631895    0.0522822
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0010124   -0.1231660    0.1211412
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0513134   -0.0994963    0.2021231
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           1                    4+                 0.1734171   -0.1004097    0.4472439
21-24 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.0434115   -0.1154917    0.2023147
21-24 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0190504   -0.1129132    0.1510140
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.0131516   -0.2117583    0.2380614
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.1654545   -0.0202159    0.3511249
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.2672257   -0.0995715    0.6340230
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.1448369   -0.4895409    0.1998671
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.2388376   -0.4195902   -0.0580849
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0429815   -0.1764788    0.0905158
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                 0.1499528   -0.1500817    0.4499873
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.1102185   -0.2088983    0.4293353
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.1153223   -0.2201443    0.4507888
21-24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    4+                 0.0056559   -0.1657495    0.1770614
21-24 months   ki1000108-IRC              INDIA                          2                    4+                 0.0952331   -0.0790235    0.2694897
21-24 months   ki1000108-IRC              INDIA                          3                    4+                -0.0788850   -0.2819460    0.1241761
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0703553   -0.2152659    0.0745553
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0689352   -0.2226973    0.0848269
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0984606   -0.2709117    0.0739905
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                 0.0341856   -0.0376690    0.1060401
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0147143   -0.0630827    0.0925112
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0488990   -0.0397764    0.1375743
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.2107847   -0.3324245   -0.0891449
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0101445   -0.1253143    0.1050253
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0111070   -0.1294309    0.1072169
21-24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           1                    4+                 0.0100549   -0.2918535    0.3119633
21-24 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0388082   -0.1434099    0.2210263
21-24 months   ki1114097-CONTENT          PERU                           3                    4+                 0.2053605    0.0225097    0.3882113


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.1020422   -0.1674319    0.3715163
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.1294853   -0.1471825    0.4061532
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0149069   -0.0674639    0.0972776
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0396084   -0.1037907    0.0245740
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0185213   -0.0807267    0.0436840
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0129242   -0.0792755    0.1051239
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                 0.2266961   -0.2465661    0.6999583
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.2369904   -0.4796461    0.0056653
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0289262   -0.0532621    0.1111146
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0323334   -0.0209936    0.0856604
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.1303370   -0.2016701   -0.0590040
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0058706   -0.0447021    0.0329608
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.2438536   -0.0618694    0.5495767
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0892727   -0.1448122    0.3233576
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0135225   -0.1774367    0.2044817
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0446701   -0.0967553    0.0074150
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0965181    0.0308938    0.1621423
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0119704   -0.0532937    0.0293529
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0324078   -0.1093900    0.0445745
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2639273   -0.8107091    0.2828546
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                -0.0467915   -0.3955315    0.3019485
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0590763   -0.2272712    0.1091187
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0608215   -0.1607827    0.0391397
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0336733   -0.0076097    0.0749563
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                 0.0480908   -0.0161934    0.1123750
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0621227   -0.1281696    0.0039243
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0163359   -0.0240341    0.0567060
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1512100   -0.3152276    0.0128075
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1732205   -0.3067483   -0.0396927
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.1141983   -0.0344604    0.2628571
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0123804   -0.0520873    0.0273266
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0192400   -0.0329789    0.0714590
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0155892   -0.0498759    0.0186975
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0061304   -0.0837047    0.0959656
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.1887720   -0.0695484    0.4470924
6-9 months     ki1000108-IRC              INDIA                          4+                   NA                 0.1821789   -0.0349006    0.3992585
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.1155283   -0.2866660    0.0556094
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0407253   -0.1307470    0.0492965
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0237223   -0.0202739    0.0677184
6-9 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0499971   -0.1111444    0.0111502
6-9 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.1063460   -0.1582000   -0.0544920
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0945750   -0.1757535   -0.0133965
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0907918   -0.0999074    0.2814910
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0979342    0.0053660    0.1905024
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0218785   -0.0150860    0.0588429
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0560242   -0.1045143   -0.0075342
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0089575   -0.0460845    0.0281694
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0102311   -0.1038196    0.0833574
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2912855   -0.6252710    0.0427001
9-12 months    ki1000108-IRC              INDIA                          4+                   NA                 0.1845502   -0.0089072    0.3780077
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0053651   -0.1511548    0.1404245
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0056952   -0.0741145    0.0627241
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0109255   -0.0453538    0.0235029
9-12 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0047029   -0.0606879    0.0512822
9-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.1141501   -0.1736425   -0.0546577
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0223759   -0.0397617    0.0845136
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1151909   -0.2826787    0.0522968
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1241359   -0.2371328   -0.0111390
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0057590   -0.0416067    0.0300888
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0253449   -0.0202734    0.0709632
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0042824   -0.0275158    0.0360805
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0127015   -0.0840263    0.0586232
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0065283   -0.1757082    0.1626517
12-15 months   ki1000108-IRC              INDIA                          4+                   NA                 0.1356687   -0.0053428    0.2766802
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0704903   -0.2183763    0.0773958
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0404559   -0.1054699    0.0245580
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0210359   -0.0521134    0.0100416
12-15 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0134768   -0.0470525    0.0740060
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0061059   -0.0741428    0.0863546
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1223398   -0.2957849    0.0511052
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.1061859    0.0075620    0.2048098
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0164501   -0.0211827    0.0540830
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0115437   -0.0524961    0.0294087
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0025576   -0.0266817    0.0317968
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0121151   -0.0543641    0.0785944
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2408907   -0.4369412   -0.0448402
15-18 months   ki1000108-IRC              INDIA                          4+                   NA                 0.1120731   -0.1050961    0.3292423
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0456497   -0.1885849    0.0972855
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0284618   -0.0835207    0.0265972
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0389889    0.0006689    0.0773089
15-18 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0162816   -0.0822648    0.0497016
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0243045   -0.0975222    0.0489131
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0910404   -0.2605094    0.0784286
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0614941   -0.1466981    0.0237099
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0368601   -0.0710586   -0.0026616
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0504435   -0.0938882   -0.0069987
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0120952   -0.0410759    0.0168854
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0001264   -0.0709131    0.0711659
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0384643   -0.3643352    0.2874065
18-21 months   ki1000108-IRC              INDIA                          4+                   NA                -0.2354172   -0.4542682   -0.0165662
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.1403689   -0.2636575   -0.0170802
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0631189   -0.1234746   -0.0027632
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0114559   -0.0279254    0.0508371
18-21 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0421974   -0.1030587    0.0186639
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0217831   -0.0825941    0.1261602
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0738934   -0.0227165    0.1705032
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0080070   -0.0455113    0.0294972
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0273151   -0.0172799    0.0719100
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0283176   -0.0061083    0.0627434
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0716228   -0.1407512   -0.0024945
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.1276372   -0.1591826    0.4144570
21-24 months   ki1000108-IRC              INDIA                          4+                   NA                 0.0329294   -0.1270695    0.1929282
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0694289   -0.2086699    0.0698120
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0210023   -0.0344635    0.0764680
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0139782   -0.0646808    0.0367243
21-24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0627455   -0.0642150    0.1897059
