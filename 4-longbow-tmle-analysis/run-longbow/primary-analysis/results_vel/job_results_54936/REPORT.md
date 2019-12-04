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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            148     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2             49     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3             28     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4+            99     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              3     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2             18     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3             43     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          4+            21     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1             67     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          2             62     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          3             27     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+            88     155  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             32     155  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          2             20     155  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          3             15     155  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           4+           131     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1             17     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           2             47     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           3             59     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           145     198  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             11     198  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     198  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     198  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            94     225  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     225  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             55     225  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63     225  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+             4      88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             33      88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             33      88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             18      88  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          4+            17     375  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          1            171     375  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          2            154     375  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          3             33     375  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+            22     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            458     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            101     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3             59     640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            345     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            183     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            102     721  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+           242     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1             34     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2            108     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3            125     509  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           4+            12      29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           1              6      29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           2              7      29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           3              4      29  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          4+            89    4653  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          1           3049    4653  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          2           1351    4653  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          3            164    4653  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+           675   19860  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1          12372   19860  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           5138   19860  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3           1675   19860  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+           107    2513  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1533    2513  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2            636    2513  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3            237    2513  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            145     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2             48     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3             27     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4+           126     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              4     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2             19     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3             59     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          4+            25     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1             84     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          2             75     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          3             46     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+           130     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             51     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          2             31     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          3             21     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           4+           137     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1             19     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           2             49     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           3             62     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           188     241  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             12     241  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     241  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     241  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           104     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             12     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             60     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63     239  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            12     307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            161     307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             86     307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             48     307  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          4+            17     395  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1            180     395  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          2            163     395  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          3             35     395  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+            21     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            425     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2             94     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3             58     598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            90     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            328     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            177     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            100     695  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+           225     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1             32     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2             96     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3            116     469  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           4+            78     214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           1             44     214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           2             54     214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           3             38     214  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          4+            85    4710  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          1           3056    4710  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          2           1396    4710  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          3            173    4710  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+           504   12572  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           7357   12572  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           3524   12572  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3           1187   12572  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+            79    1839  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1129    1839  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2            466    1839  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3            165    1839  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1            142     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2             45     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3             26     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4+           118     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              3     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2             18     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3             59     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          4+            25     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1             83     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          2             74     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          3             48     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+           128     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1             49     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          2             31     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          3             22     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           4+           130     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1             19     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           2             44     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           3             52     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           182     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             10     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             18     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           100     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             55     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             59     225  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     313  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            168     313  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             83     313  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             48     313  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          4+            17     405  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1            183     405  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          2            170     405  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          3             35     405  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+            20     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            404     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2             87     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3             54     565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            89     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            322     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            180     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3             97     688  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+           228     481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1             33     481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2             97     481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3            123     481  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           4+            78     214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           1             44     214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           2             54     214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           3             38     214  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          4+            82    4321  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          1           2778    4321  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          2           1305    4321  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          3            156    4321  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+           154    3052  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1817    3052  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2            771    3052  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3            310    3052  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+            11     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            144     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2             43     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3             27     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4+           117     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              2     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2             18     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3             57     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          4+            25     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1             81     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          2             74     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          3             47     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+           128     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1             48     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          2             31     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          3             22     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           4+           123     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1             18     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           2             43     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           3             51     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           182     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             11     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             17     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           102     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             53     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             58     224  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     317  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            178     317  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2             81     317  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             44     317  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          4+            16     398  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1            181     398  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          2            167     398  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          3             34     398  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+            20     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            403     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2             89     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3             54     566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            88     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            310     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            178     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3             98     674  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+           223     469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1             33     469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2             97     469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3            116     469  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           4+            77     212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           1             44     212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           2             53     212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           3             38     212  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          4+            74    3720  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          1           2349    3720  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          2           1162    3720  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          3            135    3720  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           172    3499  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2078    3499  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2            882    3499  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3            367    3499  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+            10     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1            135     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4+           113     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              2     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2             17     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3             52     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1             81     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          2             73     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          3             47     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+           129     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1             48     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          2             31     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          3             22     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           4+           116     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1             17     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           2             40     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           3             51     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           173     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             18     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           103     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             54     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             58     226  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            13     329  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            182     329  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             89     329  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             45     329  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          4+            15     388  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1            177     388  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          2            162     388  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          3             34     388  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+            20     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            370     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2             88     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3             54     532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            89     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            303     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            175     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             93     660  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+           220     469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1             34     469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2            102     469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3            113     469  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           4+            70     199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           1             41     199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           2             51     199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           3             37     199  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           167    3547  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2106    3547  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2            910    3547  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3            364    3547  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+            10     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1            134     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2             41     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4+           108     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              1     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2             17     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3             49     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1             82     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          2             72     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          3             47     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+           127     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1             47     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          2             31     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          3             22     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           4+           112     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1             17     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           2             37     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           3             47     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           172     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           101     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             10     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             48     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             58     217  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            11     321  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            172     321  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             90     321  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             48     321  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          4+            15     380  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1            172     380  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          2            159     380  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          3             34     380  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            363     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2             87     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3             56     528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            84     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            268     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            165     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             87     604  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+           222     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1             35     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2            106     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3            117     480  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           4+            67     189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           1             36     189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           2             49     189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           3             37     189  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           179    3548  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2129    3548  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2            898    3548  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3            342    3548  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1            131     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4+           104     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              0     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2             16     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3             47     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1             82     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          2             72     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          3             47     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+           127     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1             47     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          2             31     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          3             22     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           4+           110     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1             16     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           2             32     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           3             44     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           178     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             22     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            96     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             44     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             55     204  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            11     305  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            165     305  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             82     305  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             47     305  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          4+            15     377  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1            169     377  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          2            161     377  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          3             32     377  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+            21     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            377     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2             88     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3             55     541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            83     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            237     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            148     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     546  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+           204     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1             30     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2            102     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3            109     445  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           4+            66     183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           1             34     183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           2             47     183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           3             36     183  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            130     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2             39     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4+           102     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              0     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2             15     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3             48     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          4+            25     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1             82     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          2             73     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          3             46     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1             47     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          2             31     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          3             22     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           4+           105     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1             15     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           2             28     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           3             41     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           181     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             22     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            95     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             46     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             54     204  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            12     308  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            169     308  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             83     308  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             44     308  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          4+            15     387  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1            175     387  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          2            163     387  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          3             34     387  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            18     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            327     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2             80     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3             46     471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            81     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            205     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            132     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             72     490  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+           161     342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1             25     342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2             74     342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3             82     342  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           4+            10      38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           1              7      38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           2             12      38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           3              9      38  y_rate_haz       


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
![](/tmp/99362fef-2c21-4b9a-9a9d-0ed9fd1e9adf/d8dd4937-7669-4cbf-9f24-47c434a0346b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/99362fef-2c21-4b9a-9a9d-0ed9fd1e9adf/d8dd4937-7669-4cbf-9f24-47c434a0346b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/99362fef-2c21-4b9a-9a9d-0ed9fd1e9adf/d8dd4937-7669-4cbf-9f24-47c434a0346b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2356700   -0.3730308   -0.0983093
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1059333   -0.1510138   -0.0608528
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.1507288   -0.2244767   -0.0769809
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0745941   -0.1568754    0.0076872
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0360768   -0.1705009    0.0983472
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0628670   -0.1418297    0.0160958
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0428987   -0.1130896    0.0272923
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0965825   -0.2197972    0.0266321
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0519417   -0.0104348    0.1143182
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0639487   -0.0090808    0.1369782
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0167988   -0.0872262    0.1208238
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0914269   -0.1246194    0.3074732
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.2394891   -0.2823042   -0.1966740
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.4773022   -0.6254845   -0.3291199
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.2749552   -0.3555486   -0.1943617
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.2599735   -0.3351136   -0.1848335
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.1860140   -0.2476622   -0.1243658
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2698652   -0.4904013   -0.0493291
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.1677245   -0.3497946    0.0143457
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.1571964   -0.3030686   -0.0113242
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.1541306   -0.2118911   -0.0963701
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2645543   -0.4472021   -0.0819066
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1474313   -0.2187356   -0.0761269
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1386341   -0.2251528   -0.0521154
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                -0.4841654   -0.7346422   -0.2336887
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2532295   -0.3316276   -0.1748313
0-3 months     ki1000108-IRC              INDIA                          2                    NA                -0.2616271   -0.3551472   -0.1681070
0-3 months     ki1000108-IRC              INDIA                          3                    NA                -0.2381635   -0.4304878   -0.0458392
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.1675684   -0.2724185   -0.0627183
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1946672   -0.2155688   -0.1737656
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.1721949   -0.2145216   -0.1298682
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.2020983   -0.2547698   -0.1494267
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2700728   -0.3149266   -0.2252190
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.2034189   -0.2299311   -0.1769067
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.2494191   -0.2856002   -0.2132380
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.2492133   -0.2945203   -0.2039063
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0515944   -0.0893831   -0.0138057
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0308057   -0.1468109    0.0851995
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0219361   -0.0722679    0.0283957
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                 0.0023961   -0.0473521    0.0521443
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0179084   -0.0558054    0.0199887
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0833073   -0.0938477   -0.0727670
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0415976   -0.0579451   -0.0252501
0-3 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0366822   -0.0818573    0.0084930
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0567596    0.0369724    0.0765467
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0570764    0.0508463    0.0633066
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0664210    0.0572875    0.0755545
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                 0.0547468    0.0388475    0.0706461
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.3968594   -0.5612527   -0.2324661
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.2637331   -0.2993045   -0.2281616
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.2605841   -0.3160420   -0.2051262
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.3195146   -0.4135090   -0.2255201
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0051925   -0.0838725    0.0942575
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0232135   -0.0539971    0.0075700
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0020676   -0.0461589    0.0502941
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0231432   -0.0995029    0.0532165
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0611202   -0.1477558    0.0255154
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0442040   -0.0978449    0.0094369
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0482622   -0.0933099   -0.0032145
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0358642   -0.1054740    0.0337456
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0006256   -0.0351585    0.0339072
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0425157   -0.1059462    0.0209148
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.1020989   -0.1771549   -0.0270428
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0527512   -0.1350560    0.0295535
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0193828   -0.0578433    0.0190777
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.1653146    0.0627346    0.2678946
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                 0.0818126   -0.0094951    0.1731203
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                 0.0690737   -0.0009902    0.1391376
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0026308   -0.0415039    0.0467656
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1270517   -0.2394691   -0.0146344
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0291378   -0.1044020    0.1626776
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0806930   -0.2165145    0.0551286
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0523734   -0.0989035   -0.0058433
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0751634   -0.2584564    0.1081295
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0829667   -0.1543242   -0.0116093
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0845640   -0.1462675   -0.0228604
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0245824   -0.2175353    0.2667001
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0952159   -0.1615136   -0.0289181
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1361993   -0.2275913   -0.0448072
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0854751   -0.2069652    0.0360149
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                -0.0326068   -0.1532994    0.0880859
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0734563   -0.1148991   -0.0320134
3-6 months     ki1000108-IRC              INDIA                          2                    NA                -0.0303003   -0.0805293    0.0199287
3-6 months     ki1000108-IRC              INDIA                          3                    NA                -0.0952927   -0.2073814    0.0167961
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0223607   -0.0924077    0.0476864
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0285666   -0.0477037   -0.0094296
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0312377   -0.0720836    0.0096082
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0107924   -0.0691961    0.0476113
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0629619    0.0124329    0.1134909
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0037064   -0.0185060    0.0259188
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0316390   -0.0063802    0.0696583
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.0702072    0.0164699    0.1239445
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.1774381   -0.2043664   -0.1505097
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1442691   -0.2102024   -0.0783359
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1427244   -0.1809095   -0.1045394
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.1506529   -0.1923490   -0.1089569
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0048755   -0.0432496    0.0334987
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                -0.0361267   -0.0811995    0.0089461
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                 0.0750085    0.0296599    0.1203571
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                 0.0540566    0.0030717    0.1050414
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0459742   -0.0773988   -0.0145495
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0687049   -0.0771100   -0.0602998
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0493895   -0.0619528   -0.0368262
3-6 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0746062   -0.1073019   -0.0419105
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0178611   -0.0363962    0.0006740
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0002644   -0.0062725    0.0068013
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0086824   -0.0183990    0.0010341
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0028700   -0.0183160    0.0125760
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0500967   -0.0193242    0.1195176
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0131876   -0.0311920    0.0048169
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0201649   -0.0442538    0.0039240
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0195938   -0.0225556    0.0617431
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0219728   -0.0831710    0.0392254
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0727713   -0.0948309   -0.0507116
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0813687   -0.1223579   -0.0403795
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0752136   -0.1191463   -0.0312809
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1159224   -0.1841154   -0.0477293
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0557626   -0.0999647   -0.0115606
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0556131   -0.0938873   -0.0173389
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.1019273   -0.1417442   -0.0621103
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0366880   -0.0646140   -0.0087621
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0467260   -0.0914365   -0.0020156
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0079156   -0.0704287    0.0545976
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0288607   -0.0818025    0.0240810
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0441704   -0.0758831   -0.0124577
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0297015   -0.0734730    0.1328760
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.0165206   -0.0851674    0.0521262
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0649692   -0.1139686   -0.0159698
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0109308   -0.0428513    0.0209896
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1024958   -0.2485389    0.0435474
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0298630   -0.1556215    0.0958955
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0359852   -0.1232702    0.0512998
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0949873   -0.1526064   -0.0373683
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0991839   -0.3105895    0.1122218
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1053908   -0.1571361   -0.0536456
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0858564   -0.1468531   -0.0248598
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1803058   -0.3170273   -0.0435843
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0665574   -0.1166556   -0.0164591
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0763850   -0.1400408   -0.0127292
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1284065   -0.2168356   -0.0399774
6-9 months     ki1000108-IRC              INDIA                          4+                   NA                -0.0283604   -0.1241728    0.0674520
6-9 months     ki1000108-IRC              INDIA                          1                    NA                -0.0231310   -0.0509008    0.0046388
6-9 months     ki1000108-IRC              INDIA                          2                    NA                -0.0019415   -0.0397006    0.0358175
6-9 months     ki1000108-IRC              INDIA                          3                    NA                -0.0419421   -0.1284113    0.0445271
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0350744   -0.1027764    0.0326276
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0665327   -0.0792246   -0.0538408
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0540867   -0.0835643   -0.0246091
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0497901   -0.0854560   -0.0141242
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0182911   -0.0582953    0.0217131
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0199746   -0.0382097   -0.0017394
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0495952   -0.0756850   -0.0235053
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0485510   -0.0836005   -0.0135015
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0525071   -0.0800468   -0.0249675
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0429960   -0.0811090   -0.0048829
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0395660   -0.0808198    0.0016879
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0303052   -0.0634984    0.0028881
6-9 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0012060   -0.0339650    0.0315531
6-9 months     ki1114097-CONTENT          PERU                           1                    NA                -0.0254146   -0.0778450    0.0270157
6-9 months     ki1114097-CONTENT          PERU                           2                    NA                -0.0792232   -0.1246842   -0.0337622
6-9 months     ki1114097-CONTENT          PERU                           3                    NA                 0.0047927   -0.0307292    0.0403146
6-9 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0703377   -0.0939715   -0.0467040
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1048944   -0.1122118   -0.0975770
6-9 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0969929   -0.1074937   -0.0864921
6-9 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0813470   -0.1069119   -0.0557822
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0101443   -0.0250489    0.0453376
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0324536   -0.0439980   -0.0209093
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0345534   -0.0518848   -0.0172221
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0119127   -0.0421294    0.0183041
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1128107   -0.1977977   -0.0278236
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0854129   -0.1053724   -0.0654534
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0802965   -0.1207769   -0.0398162
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0930997   -0.1391587   -0.0470408
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1266349   -0.1755213   -0.0777486
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0776480   -0.1057307   -0.0495653
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.1046592   -0.1310770   -0.0782414
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0773419   -0.1133540   -0.0413297
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0715059   -0.0957764   -0.0472353
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0508059   -0.0903274   -0.0112843
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0494415   -0.0857845   -0.0130985
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0560711   -0.1069300   -0.0052122
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0176006   -0.0484115    0.0132104
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0893713   -0.1524195   -0.0263231
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0793178   -0.1278785   -0.0307571
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0464855   -0.0935615    0.0005905
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0834019   -0.1131516   -0.0536522
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0128727   -0.0597050    0.0854505
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0457696   -0.0760078    0.1675469
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0801949   -0.1925062    0.0321165
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.1499594   -0.2077180   -0.0922008
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0862544   -0.2564113    0.0839025
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1658250   -0.2274395   -0.1042105
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1576212   -0.2146590   -0.1005834
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0585920   -0.1914139    0.0742300
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1352175   -0.1711352   -0.0992999
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1022503   -0.1734083   -0.0310923
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1342995   -0.1928205   -0.0757784
9-12 months    ki1000108-IRC              INDIA                          4+                   NA                -0.0883951   -0.1685436   -0.0082465
9-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0342442   -0.0587841   -0.0097043
9-12 months    ki1000108-IRC              INDIA                          2                    NA                -0.0233209   -0.0503759    0.0037341
9-12 months    ki1000108-IRC              INDIA                          3                    NA                -0.0681562   -0.1241693   -0.0121431
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0577925   -0.1192191    0.0036341
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0640956   -0.0769642   -0.0512269
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0656705   -0.0950903   -0.0362506
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0451738   -0.0820140   -0.0083335
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0252893   -0.0575520    0.0069734
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0387554   -0.0555679   -0.0219430
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0426240   -0.0643991   -0.0208489
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0170423   -0.0461284    0.0120438
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0761653   -0.0970597   -0.0552710
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1010370   -0.1458167   -0.0562572
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1051882   -0.1407095   -0.0696668
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0594975   -0.0813008   -0.0376941
9-12 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0215138   -0.0516174    0.0085897
9-12 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0460270   -0.0807659   -0.0112880
9-12 months    ki1114097-CONTENT          PERU                           2                    NA                -0.0209409   -0.0579962    0.0161144
9-12 months    ki1114097-CONTENT          PERU                           3                    NA                -0.0013410   -0.0337763    0.0310944
9-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.0543575   -0.0766311   -0.0320838
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0972807   -0.1046193   -0.0899420
9-12 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.0852314   -0.0958076   -0.0746552
9-12 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.0660471   -0.0930603   -0.0390338
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0686101   -0.0958789   -0.0413412
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0532944   -0.0628698   -0.0437189
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0474916   -0.0627988   -0.0321844
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0489348   -0.0736343   -0.0242354
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0062291   -0.0503972    0.0628555
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0582415   -0.0773032   -0.0391798
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0820675   -0.1218907   -0.0422443
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0413844   -0.0901047    0.0073358
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0175012   -0.0601904    0.0251880
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0779728   -0.1056090   -0.0503367
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0386489   -0.0649611   -0.0123366
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0667147   -0.0998860   -0.0335435
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0564310   -0.0761915   -0.0366705
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0877813   -0.1200788   -0.0554838
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0080024   -0.0577623    0.0417574
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0353496   -0.0810977    0.0103986
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0765964   -0.1018407   -0.0513521
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0625611   -0.1482965    0.0231742
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0679297   -0.1089064   -0.0269530
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0444474   -0.0756071   -0.0132878
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0614413   -0.0884602   -0.0344224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0422587   -0.0547445    0.1392618
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0848840   -0.1641033   -0.0056646
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0752925   -0.1452905   -0.0052945
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0659552   -0.1033414   -0.0285690
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0675764   -0.0767937    0.2119465
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1019827   -0.1569731   -0.0469924
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0518401   -0.0941668   -0.0095133
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1031525   -0.1642968   -0.0420083
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0743823   -0.1099445   -0.0388201
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0799375   -0.1434136   -0.0164613
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0466334   -0.1245463    0.0312796
12-15 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0791389   -0.1433226   -0.0149552
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0506025   -0.0718602   -0.0293448
12-15 months   ki1000108-IRC              INDIA                          2                    NA                -0.0359283   -0.0662023   -0.0056543
12-15 months   ki1000108-IRC              INDIA                          3                    NA                -0.0282790   -0.0912627    0.0347047
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0251238   -0.0850374    0.0347897
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0434988   -0.0556972   -0.0313003
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0324803   -0.0578244   -0.0071362
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0416548   -0.0752806   -0.0080289
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0268345   -0.0539252    0.0002562
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0433829   -0.0574086   -0.0293572
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0363364   -0.0553899   -0.0172830
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0371761   -0.0642672   -0.0100849
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0595591   -0.0773748   -0.0417435
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0916148   -0.1292284   -0.0540012
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0733962   -0.0936715   -0.0531210
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0766006   -0.0979716   -0.0552295
12-15 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0774343   -0.1070165   -0.0478522
12-15 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0628976   -0.1035865   -0.0222087
12-15 months   ki1114097-CONTENT          PERU                           2                    NA                -0.0718066   -0.0995250   -0.0440882
12-15 months   ki1114097-CONTENT          PERU                           3                    NA                -0.0778110   -0.1171672   -0.0384547
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0538317   -0.0854573   -0.0222061
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0454459   -0.0534025   -0.0374893
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0466635   -0.0584686   -0.0348584
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0368334   -0.0550417   -0.0186250
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0245634   -0.0980286    0.0489018
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0464401   -0.0625095   -0.0303707
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0467198   -0.0809331   -0.0125065
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0413665   -0.0849105    0.0021776
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0608751   -0.0933814   -0.0283688
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0236605   -0.0464911   -0.0008298
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0507837   -0.0731116   -0.0284558
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0131296   -0.0404461    0.0141870
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0593347   -0.0784794   -0.0401900
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0525556   -0.0857791   -0.0193320
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0642973   -0.1194060   -0.0091886
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0116891   -0.0742409    0.0508626
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0326476   -0.0548009   -0.0104943
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0635216   -0.1136659   -0.0133773
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0570210   -0.0833387   -0.0307033
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0199984   -0.0578050    0.0178083
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0282438   -0.0499355   -0.0065521
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0330636   -0.1105565    0.0444294
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0299080   -0.0961465    0.0363304
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0338855   -0.1060673    0.0382962
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0857759   -0.1182129   -0.0533389
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0776867   -0.2118716    0.0564982
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0660531   -0.1154281   -0.0166780
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0914881   -0.1353923   -0.0475838
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0240857   -0.1312508    0.0830793
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0880092   -0.1165085   -0.0595099
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0482344   -0.1023688    0.0059000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0616639   -0.1304233    0.0070955
15-18 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0813065   -0.1675566    0.0049436
15-18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0403678   -0.0646808   -0.0160549
15-18 months   ki1000108-IRC              INDIA                          2                    NA                -0.0373611   -0.0588405   -0.0158816
15-18 months   ki1000108-IRC              INDIA                          3                    NA                -0.0338995   -0.0742557    0.0064568
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0189975   -0.0695035    0.0315086
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0342230   -0.0447168   -0.0237293
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0544695   -0.0754393   -0.0334997
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0365564   -0.0656635   -0.0074493
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0117880   -0.0336833    0.0101074
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0175821   -0.0315430   -0.0036213
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0227454   -0.0394473   -0.0060436
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0006937   -0.0260638    0.0246764
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0825202   -0.1034785   -0.0615619
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0676805   -0.1000275   -0.0353335
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0588179   -0.0797630   -0.0378727
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0577741   -0.0828571   -0.0326911
15-18 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0024118   -0.0329474    0.0281238
15-18 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0127146   -0.0465959    0.0211667
15-18 months   ki1114097-CONTENT          PERU                           2                    NA                -0.0022927   -0.0368495    0.0322640
15-18 months   ki1114097-CONTENT          PERU                           3                    NA                -0.0330985   -0.0718761    0.0056790
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0280015   -0.0557027   -0.0003004
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0286788   -0.0364437   -0.0209138
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0427487   -0.0546763   -0.0308211
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0338596   -0.0516238   -0.0160954
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0271512   -0.0126998    0.0670022
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0238007   -0.0372786   -0.0103228
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0076154   -0.0257919    0.0410226
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0029365   -0.0372314    0.0313584
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0208383   -0.0093771    0.0510538
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0128555   -0.0062194    0.0319303
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0007662   -0.0223388    0.0208064
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0045553   -0.0304944    0.0213837
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0174874   -0.0343086   -0.0006662
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0229026   -0.0530544    0.0072493
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0260469   -0.0604441    0.0083503
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0925256   -0.1392512   -0.0457999
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0046575   -0.0159153    0.0252302
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0129322   -0.0545913    0.0287269
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0140836   -0.0581819    0.0300146
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0334831   -0.0679423    0.0009761
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0275296   -0.0500578   -0.0050013
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0486072   -0.1135381    0.0163237
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0533751   -0.1107538    0.0040036
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0534696   -0.1193990    0.0124599
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0277704   -0.0588269    0.0032860
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0122769   -0.1619751    0.1374213
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0470384   -0.0971979    0.0031212
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0164967   -0.0616665    0.0286731
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0530714   -0.0411376    0.1472804
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0564554   -0.0857823   -0.0271286
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0206733   -0.0657055    0.0243588
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0542649   -0.1235966    0.0150667
18-21 months   ki1000108-IRC              INDIA                          4+                   NA                 0.0710575   -0.0115790    0.1536939
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0453619   -0.0650568   -0.0256669
18-21 months   ki1000108-IRC              INDIA                          2                    NA                -0.0329580   -0.0527186   -0.0131973
18-21 months   ki1000108-IRC              INDIA                          3                    NA                -0.0381090   -0.0822104    0.0059924
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0245783   -0.0124367    0.0615933
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0157487   -0.0257383   -0.0057591
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0050052   -0.0251283    0.0151178
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0000348   -0.0233340    0.0232645
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0066285   -0.0322393    0.0189822
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0412593   -0.0538814   -0.0286372
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0250065   -0.0419523   -0.0080607
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0167213   -0.0362340    0.0027914
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0122779   -0.0079598    0.0325156
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0280254   -0.0090326    0.0650833
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                 0.0159194    0.0004411    0.0313977
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                 0.0296125    0.0024418    0.0567831
18-21 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0063005   -0.0205506    0.0331515
18-21 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0109356   -0.0536766    0.0318054
18-21 months   ki1114097-CONTENT          PERU                           2                    NA                -0.0288780   -0.0570463   -0.0007097
18-21 months   ki1114097-CONTENT          PERU                           3                    NA                 0.0074324   -0.0210019    0.0358667
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0203597   -0.0134923    0.0542117
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0239919    0.0082413    0.0397424
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0469890    0.0154049    0.0785731
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                 0.0149260   -0.0163808    0.0462329
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0056312   -0.0307994    0.0420618
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0261387    0.0080482    0.0442292
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                 0.0454128    0.0240928    0.0667328
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0246012    0.0035545    0.0456480
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0029275   -0.0157519    0.0216069
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0017952   -0.0332629    0.0296726
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0058640   -0.0285775    0.0403056
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0316622   -0.0224998    0.0858243
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0482038    0.0294703    0.0669373
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1041671    0.0348688    0.1734653
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0878093    0.0400546    0.1355640
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0563835    0.0208727    0.0918942
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0371441    0.0189832    0.0553051
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0427124   -0.0364844    0.1219091
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0650343    0.0113398    0.1187288
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0836606   -0.0065597    0.1738809
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0322931   -0.0001005    0.0646868
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0130667   -0.1057509    0.0796175
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0414752   -0.0942797    0.0113293
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0140911   -0.0173835    0.0455657
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0107385   -0.1041810    0.0827040
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0301073    0.0033622    0.0568524
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                 0.0054156   -0.0407599    0.0515911
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0104957   -0.0671396    0.0461482
21-24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0164454   -0.0688554    0.0359646
21-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0199489   -0.0397065   -0.0001912
21-24 months   ki1000108-IRC              INDIA                          2                    NA                 0.0051257   -0.0188829    0.0291343
21-24 months   ki1000108-IRC              INDIA                          3                    NA                -0.0726630   -0.1097659   -0.0355602
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0638655    0.0164323    0.1112986
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0463723    0.0361610    0.0565836
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0455253    0.0243349    0.0667156
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0366776    0.0048560    0.0684992
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0576866    0.0366402    0.0787329
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0548700    0.0416415    0.0680985
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0620053    0.0459962    0.0780144
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.0695845    0.0497441    0.0894249
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0506523    0.0246989    0.0766057
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0168471   -0.0468388    0.0131445
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                 0.0581299    0.0305840    0.0856757
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                 0.0447941    0.0140526    0.0755357
21-24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0013475   -0.0474775    0.0447826
21-24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.0062681   -0.0923508    0.1048869
21-24 months   ki1114097-CONTENT          PERU                           2                    NA                 0.0091430   -0.0266864    0.0449724
21-24 months   ki1114097-CONTENT          PERU                           3                    NA                 0.0747047    0.0268545    0.1225548


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0689235   -0.1155446   -0.0223023
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0544973    0.0099212    0.0990734
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2543887   -0.2877193   -0.2210580
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1882890   -0.2390479   -0.1375301
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1400701   -0.1794271   -0.1007131
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2583942   -0.3138361   -0.2029523
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0686573   -0.0768222   -0.0604923
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0588125    0.0538935    0.0637315
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2749035   -0.3031728   -0.2466342
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0016619   -0.0396107    0.0362870
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0540241   -0.0839855   -0.0240627
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0630242   -0.0694797   -0.0565686
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0033963   -0.0082613    0.0014686
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0088470   -0.0225757    0.0048816
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0167217   -0.0383378    0.0048943
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                -0.0242292   -0.0452610   -0.0031973
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.1012070   -0.1069037   -0.0955102
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0289856   -0.0379823   -0.0199890
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0345488   -0.0514176   -0.0176801
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0224698   -0.0391090   -0.0058306
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0908853   -0.0965660   -0.0852046
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0521361   -0.0596399   -0.0446324
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0442500   -0.0609986   -0.0275014
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0734290   -0.0899048   -0.0569533
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0451119   -0.0511864   -0.0390374
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0383523   -0.0530401   -0.0236646
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0091366   -0.0260209    0.0077477
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0328956   -0.0389474   -0.0268439
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0396016   -0.0529096   -0.0262935
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0059547   -0.0211395    0.0092302
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0137697   -0.0273940   -0.0001454
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.0213805   -0.0073799    0.0501409


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.1297367   -0.0160519    0.2755253
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0849412   -0.0714354    0.2413178
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.1610759    0.0011489    0.3210030
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0267901   -0.1833712    0.1297909
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0068218   -0.1580309    0.1443872
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0605057   -0.2424543    0.1214429
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0120070   -0.0841566    0.1081707
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0351429   -0.1557566    0.0854709
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0394852   -0.1849725    0.2639430
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    4+                -0.2378131   -0.3921158   -0.0835104
0-3 months     ki0047075b-MAL-ED          PERU                           2                    4+                -0.0354661   -0.1260945    0.0551624
0-3 months     ki0047075b-MAL-ED          PERU                           3                    4+                -0.0204845   -0.1070379    0.0660690
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0838512   -0.3131968    0.1454945
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0182895   -0.1747025    0.2112815
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0288176   -0.1296264    0.1872616
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.1104238   -0.3011373    0.0802898
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0066993   -0.0853633    0.0987620
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0154965   -0.0895593    0.1205522
0-3 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    4+                 0.2309359   -0.0314983    0.4933701
0-3 months     ki1000108-IRC              INDIA                          2                    4+                 0.2225383   -0.0454930    0.4905697
0-3 months     ki1000108-IRC              INDIA                          3                    4+                 0.2460019   -0.0695768    0.5615807
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0270988   -0.1337550    0.0795574
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0046265   -0.1175760    0.1083231
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0345298   -0.1516802    0.0826206
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                 0.0666539    0.0143596    0.1189482
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0206537   -0.0372110    0.0785184
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0208594   -0.0429047    0.0846236
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0207887   -0.1014063    0.1429837
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0296583   -0.0335455    0.0928622
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0539905   -0.0083260    0.1163071
0-3 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.0653990   -0.1047400   -0.0260579
0-3 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0236892   -0.0649678    0.0175893
0-3 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0187738   -0.0777510    0.0402034
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                 0.0003169   -0.0200721    0.0207058
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                 0.0096614   -0.0113070    0.0306299
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0020127   -0.0275706    0.0235452
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.1331263   -0.0352020    0.3014547
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.1362753   -0.0380805    0.3106311
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0773448   -0.1133116    0.2680012
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0284061   -0.1223651    0.0655529
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0031249   -0.1041888    0.0979390
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0283358   -0.1458288    0.0891573
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0169162   -0.0848162    0.1186486
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0128580   -0.0849348    0.1106509
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0252560   -0.0856906    0.1362026
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0418901   -0.1140263    0.0302462
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.1014732   -0.1841312   -0.0188152
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0521256   -0.1416248    0.0373736
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    4+                 0.1846974    0.0750557    0.2943391
3-6 months     ki0047075b-MAL-ED          PERU                           2                    4+                 0.1011954    0.0021724    0.2002184
3-6 months     ki0047075b-MAL-ED          PERU                           3                    4+                 0.0884565    0.0085541    0.1683589
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1296826   -0.2510611   -0.0083040
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0265070   -0.1140387    0.1670526
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0833238   -0.2260668    0.0594192
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0227900   -0.2116754    0.1660954
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0305933   -0.1155864    0.0543998
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0321905   -0.1096627    0.0452816
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.1197983   -0.3709154    0.1313189
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1607817   -0.4193460    0.0977827
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.1100575   -0.3808751    0.1607600
3-6 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    4+                -0.0408495   -0.1683604    0.0866613
3-6 months     ki1000108-IRC              INDIA                          2                    4+                 0.0023065   -0.1277493    0.1323622
3-6 months     ki1000108-IRC              INDIA                          3                    4+                -0.0626859   -0.2266856    0.1013138
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0062060   -0.0790238    0.0666118
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0088771   -0.0901856    0.0724315
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.0115683   -0.0796560    0.1027926
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0592555   -0.1145811   -0.0039299
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0313229   -0.0947693    0.0321236
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0072453   -0.0668619    0.0813525
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0331689   -0.0380789    0.1044167
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0347136   -0.0121171    0.0815444
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0267851   -0.0228127    0.0763829
3-6 months     ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    4+                -0.0312512   -0.0908149    0.0283125
3-6 months     ki1114097-CONTENT          PERU                           2                    4+                 0.0798839    0.0205702    0.1391976
3-6 months     ki1114097-CONTENT          PERU                           3                    4+                 0.0589320   -0.0049524    0.1228165
3-6 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.0227307   -0.0552353    0.0097739
3-6 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0034153   -0.0372613    0.0304307
3-6 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0286320   -0.0739725    0.0167085
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                 0.0181255   -0.0016562    0.0379072
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                 0.0091787   -0.0112457    0.0296030
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                 0.0149911   -0.0085913    0.0385735
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0632843   -0.1351453    0.0085768
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0702616   -0.1439899    0.0034667
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0305029   -0.1121044    0.0510985
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0507985   -0.1159732    0.0143761
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0593959   -0.1330296    0.0142377
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0532408   -0.1286201    0.0221385
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0601598   -0.0210900    0.1414096
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0603093   -0.0179373    0.1385559
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0139951   -0.0652901    0.0932804
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0100380   -0.0630626    0.0429866
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0287725   -0.0407344    0.0982793
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0078273   -0.0520095    0.0676641
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    4+                 0.0738719   -0.0335367    0.1812804
6-9 months     ki0047075b-MAL-ED          PERU                           2                    4+                 0.0276497   -0.0487100    0.1040095
6-9 months     ki0047075b-MAL-ED          PERU                           3                    4+                -0.0207988   -0.0791104    0.0375128
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0915649   -0.2409973    0.0578674
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0189322   -0.1487182    0.1108537
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0250544   -0.1180929    0.0679841
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0041965   -0.2241188    0.2157257
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0104035   -0.0871916    0.0663846
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0091309   -0.0745414    0.0928033
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                 0.1137484   -0.0319976    0.2594944
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.1039208   -0.0470419    0.2548836
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0518993   -0.1114231    0.2152218
6-9 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    4+                 0.0052294   -0.0945228    0.1049815
6-9 months     ki1000108-IRC              INDIA                          2                    4+                 0.0264189   -0.0767009    0.1295386
6-9 months     ki1000108-IRC              INDIA                          3                    4+                -0.0135817   -0.1427623    0.1155989
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0314583   -0.1003246    0.0374081
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0190123   -0.0928578    0.0548333
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0147156   -0.0912540    0.0618227
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0016835   -0.0457388    0.0423719
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0313041   -0.0791581    0.0165500
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0302599   -0.0835702    0.0230504
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0095111   -0.0376295    0.0566518
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0129412   -0.0368338    0.0627161
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0222020   -0.0209960    0.0653999
6-9 months     ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           1                    4+                -0.0242087   -0.0861345    0.0377172
6-9 months     ki1114097-CONTENT          PERU                           2                    4+                -0.0780172   -0.1341932   -0.0218413
6-9 months     ki1114097-CONTENT          PERU                           3                    4+                 0.0059987   -0.0423583    0.0543557
6-9 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.0345567   -0.0593155   -0.0097979
6-9 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0266552   -0.0525272   -0.0007832
6-9 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0110093   -0.0458437    0.0238251
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0425980   -0.0793780   -0.0058180
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0446978   -0.0837280   -0.0056676
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0220570   -0.0690434    0.0249294
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0273978   -0.0598813    0.1146768
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0325142   -0.0616032    0.1266315
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.0197109   -0.0770903    0.1165121
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0489869   -0.0074635    0.1054373
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0219757   -0.0336162    0.0775677
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0492931   -0.0115957    0.1101819
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0207000   -0.0255476    0.0669476
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0220643   -0.0218795    0.0660081
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0154347   -0.0413218    0.0721913
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.0717707   -0.1420706   -0.0014709
9-12 months    ki0047075b-MAL-ED          PERU                           2                    4+                -0.0617173   -0.1192178   -0.0042167
9-12 months    ki0047075b-MAL-ED          PERU                           3                    4+                -0.0288849   -0.0852352    0.0274654
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.0962747    0.0174050    0.1751443
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.1291715    0.0041651    0.2541779
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0032071   -0.1131209    0.1195351
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0637050   -0.1159699    0.2433800
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0158656   -0.1010834    0.0693522
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0076618   -0.0890865    0.0737630
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0766255   -0.2145054    0.0612544
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0436583   -0.1944741    0.1071574
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0757075   -0.2212330    0.0698180
9-12 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    4+                 0.0541508   -0.0300665    0.1383682
9-12 months    ki1000108-IRC              INDIA                          2                    4+                 0.0650742   -0.0199020    0.1500504
9-12 months    ki1000108-IRC              INDIA                          3                    4+                 0.0202388   -0.0777638    0.1182415
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0063031   -0.0690700    0.0564639
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0078779   -0.0759841    0.0602282
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.0126187   -0.0589405    0.0841779
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0134661   -0.0499324    0.0230002
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0173347   -0.0562888    0.0216195
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0082470   -0.0351896    0.0516836
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0248716   -0.0743936    0.0246504
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0290228   -0.0702279    0.0121823
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0166679   -0.0135042    0.0468400
9-12 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           1                    4+                -0.0245131   -0.0703350    0.0213088
9-12 months    ki1114097-CONTENT          PERU                           2                    4+                 0.0005729   -0.0471909    0.0483368
9-12 months    ki1114097-CONTENT          PERU                           3                    4+                 0.0201729   -0.0238238    0.0641695
9-12 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.0429232   -0.0663705   -0.0194760
9-12 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.0308739   -0.0555228   -0.0062251
9-12 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.0116896   -0.0467073    0.0233281
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.0153157   -0.0138695    0.0445009
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.0211185   -0.0103508    0.0525877
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0196752   -0.0163949    0.0557454
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0644707   -0.1243368   -0.0046045
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0882966   -0.1574400   -0.0191533
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0476136   -0.1222806    0.0270534
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0604716   -0.1114166   -0.0095267
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0211477   -0.0713428    0.0290474
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0492135   -0.1032467    0.0048197
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0313503   -0.0692586    0.0065579
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0484286   -0.0052160    0.1020731
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0210814   -0.0287132    0.0708760
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    4+                 0.0140353   -0.0755006    0.1035711
12-15 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.0086667   -0.0389780    0.0563114
12-15 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0321490   -0.0083443    0.0726423
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.1037000    0.0026618    0.2047382
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0234427   -0.1070909    0.0602056
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0138512   -0.0888931    0.0611907
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.1335316   -0.0157237    0.2827869
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0360275   -0.1027507    0.0306957
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0141152   -0.0427486    0.0709790
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                 0.0287702   -0.0420467    0.0995871
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.0232151   -0.0647807    0.1112109
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0565192   -0.0425985    0.1556369
12-15 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    4+                 0.0285364   -0.0392172    0.0962900
12-15 months   ki1000108-IRC              INDIA                          2                    4+                 0.0432106   -0.0278124    0.1142335
12-15 months   ki1000108-IRC              INDIA                          3                    4+                 0.0508599   -0.0395340    0.1412538
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0183749   -0.0794721    0.0427223
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0073564   -0.0724077    0.0576948
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0165309   -0.0850959    0.0520341
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0165484   -0.0470506    0.0139539
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0095019   -0.0426175    0.0236136
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0103415   -0.0486398    0.0279567
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0320557   -0.0737194    0.0096081
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0138371   -0.0409163    0.0132421
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0170414   -0.0448727    0.0107899
12-15 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           1                    4+                 0.0145367   -0.0359076    0.0649811
12-15 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0056277   -0.0350112    0.0462666
12-15 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0003767   -0.0495616    0.0488083
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.0083858   -0.0241080    0.0408797
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.0071682   -0.0263766    0.0407130
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0169983   -0.0196579    0.0536546
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0218768   -0.0970440    0.0532904
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0221564   -0.1032680    0.0589552
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0168031   -0.1021373    0.0685311
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0372146   -0.0024336    0.0768629
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0100914   -0.0292822    0.0494650
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0477456    0.0050743    0.0904168
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0067791   -0.0314389    0.0449971
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0049626   -0.0632198    0.0532945
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0476455   -0.0178462    0.1131373
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.0308740   -0.0857058    0.0239578
15-18 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.0243734   -0.0588452    0.0100984
15-18 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0126492   -0.0311947    0.0564931
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0048198   -0.0855144    0.0758749
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0016642   -0.0713960    0.0680675
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0056417   -0.0810979    0.0698144
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0080892   -0.1299742    0.1461526
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0197228   -0.0392518    0.0786975
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0057122   -0.0604941    0.0490698
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0639235   -0.1751461    0.0472992
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0241487   -0.1448838    0.0965864
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0375782   -0.1648688    0.0897124
15-18 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    4+                 0.0409387   -0.0488263    0.1307037
15-18 months   ki1000108-IRC              INDIA                          2                    4+                 0.0439454   -0.0452279    0.1331188
15-18 months   ki1000108-IRC              INDIA                          3                    4+                 0.0474070   -0.0477990    0.1426131
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0152256   -0.0668054    0.0363543
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0354720   -0.0901544    0.0192103
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0175589   -0.0758250    0.0407071
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0057941   -0.0318950    0.0203067
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0109575   -0.0386460    0.0167310
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0110943   -0.0225220    0.0447106
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0148397   -0.0237170    0.0533964
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0237023   -0.0059434    0.0533481
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0247460   -0.0079597    0.0574517
15-18 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           1                    4+                -0.0103028   -0.0560058    0.0354002
15-18 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0001191   -0.0460324    0.0462705
15-18 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0306867   -0.0798947    0.0185213
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0006772   -0.0293539    0.0279995
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0147471   -0.0445336    0.0150393
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0058581   -0.0393286    0.0276124
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0509519   -0.0930682   -0.0088357
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0195359   -0.0714771    0.0324054
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0300877   -0.0828865    0.0227111
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0079829   -0.0436855    0.0277197
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0216046   -0.0586923    0.0154831
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0253937   -0.0652730    0.0144856
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0054152   -0.0400094    0.0291790
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0085595   -0.0469327    0.0298137
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0750382   -0.1247185   -0.0253579
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.0175897   -0.0639371    0.0287578
18-21 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.0187411   -0.0673704    0.0298882
18-21 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.0381406   -0.0779787    0.0016975
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0210776   -0.0896572    0.0475019
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0258456   -0.0880611    0.0363700
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0259400   -0.0956638    0.0437838
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0154935   -0.1373923    0.1683793
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0192679   -0.0782636    0.0397277
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0112737   -0.0435425    0.0660899
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.1095269   -0.2075760   -0.0114777
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0737448   -0.1786145    0.0311250
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.1073364   -0.2245705    0.0098977
18-21 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    4+                -0.1164193   -0.2014077   -0.0314309
18-21 months   ki1000108-IRC              INDIA                          2                    4+                -0.1040154   -0.1889480   -0.0190828
18-21 months   ki1000108-IRC              INDIA                          3                    4+                -0.1091665   -0.2029071   -0.0154258
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0403271   -0.0786603   -0.0019938
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0295835   -0.0716956    0.0125285
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0246131   -0.0683458    0.0191196
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0346308   -0.0632922   -0.0059693
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0183780   -0.0492449    0.0124890
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0100927   -0.0422791    0.0220937
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0157474   -0.0262933    0.0577882
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0036415   -0.0214994    0.0287824
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0173345   -0.0169177    0.0515868
18-21 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           1                    4+                -0.0172361   -0.0676363    0.0331641
18-21 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0351784   -0.0743086    0.0039517
18-21 months   ki1114097-CONTENT          PERU                           3                    4+                 0.0011320   -0.0381504    0.0404143
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0036322   -0.0338430    0.0411074
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0266294   -0.0197265    0.0729852
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0054336   -0.0515306    0.0406634
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0205075   -0.0202312    0.0612462
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0397816   -0.0024955    0.0820588
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0189700   -0.0231052    0.0610453
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0047227   -0.0413917    0.0319463
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0029365   -0.0362507    0.0421237
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0287348   -0.0286713    0.0861408
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           1                    4+                 0.0559633   -0.0159381    0.1278648
21-24 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.0396055   -0.0117979    0.0910089
21-24 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0081797   -0.0321155    0.0484748
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.0055682   -0.0756918    0.0868283
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0278902   -0.0287407    0.0845211
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0465165   -0.0456296    0.1386625
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0453598   -0.1435419    0.0528222
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0737683   -0.1357172   -0.0118195
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0182020   -0.0633684    0.0269643
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                 0.0408458   -0.0561112    0.1378028
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.0161541   -0.0881080    0.1204163
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0002428   -0.1090416    0.1095273
21-24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    4+                -0.0035034   -0.0596312    0.0526243
21-24 months   ki1000108-IRC              INDIA                          2                    4+                 0.0215711   -0.0360831    0.0792253
21-24 months   ki1000108-IRC              INDIA                          3                    4+                -0.0562176   -0.1207045    0.0082693
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0174931   -0.0660021    0.0310158
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0183402   -0.0703066    0.0336262
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0271878   -0.0842924    0.0299167
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0028165   -0.0276760    0.0220429
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0043187   -0.0221087    0.0307460
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0118979   -0.0169756    0.0407714
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0674994   -0.1072286   -0.0277703
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0074775   -0.0305180    0.0454731
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0058582   -0.0463152    0.0345989
21-24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           1                    4+                 0.0076155   -0.1012590    0.1164901
21-24 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0104905   -0.0479195    0.0689005
21-24 months   ki1114097-CONTENT          PERU                           3                    4+                 0.0760521    0.0095869    0.1425173


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.1181174   -0.0187757    0.2550105
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0328466   -0.1599180    0.0942247
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0025556   -0.0360481    0.0411594
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0148996   -0.0474510    0.0176519
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0022750   -0.0319952    0.0274453
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0140605   -0.0323554    0.0604764
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                 0.2257712   -0.0200017    0.4715442
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0204718   -0.1233779    0.0824343
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0388120   -0.0045034    0.0821275
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0198264   -0.0069467    0.0465995
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0507489   -0.0884890   -0.0130087
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0020529   -0.0170671    0.0211730
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.1219559   -0.0382731    0.2821850
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0276333   -0.1160795    0.0608129
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0250800   -0.0574251    0.1075851
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0224528   -0.0465025    0.0015969
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0451289    0.0145872    0.0756705
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0042927   -0.0233331    0.0147476
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0181714   -0.0546566    0.0183138
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1225439   -0.3604762    0.1153885
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                -0.0214173   -0.1401974    0.0973628
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0046018   -0.0741140    0.0649103
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0361879   -0.0831805    0.0108048
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0160403   -0.0035666    0.0356473
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                 0.0176317   -0.0127398    0.0480033
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0170500   -0.0482730    0.0141730
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0144648   -0.0039060    0.0328356
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0589437   -0.1269898    0.0091024
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0480504   -0.1090397    0.0129389
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0455868   -0.0197259    0.1108996
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0021285   -0.0164486    0.0207056
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0105919   -0.0127459    0.0339298
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0068520   -0.0212691    0.0075652
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0015775   -0.0369869    0.0401419
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0983402   -0.0381552    0.2348356
6-9 months     ki1000108-IRC              INDIA                          4+                   NA                 0.0116387   -0.0829580    0.1062353
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0263520   -0.0925497    0.0398457
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0130727   -0.0502181    0.0240728
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0086140   -0.0105829    0.0278108
6-9 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0230232   -0.0509401    0.0048937
6-9 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0308692   -0.0545419   -0.0071966
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0391300   -0.0736233   -0.0046367
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0256053   -0.0571710    0.1083815
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0353950   -0.0111965    0.0819865
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0092094   -0.0061603    0.0245791
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0243255   -0.0449798   -0.0036712
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0014602   -0.0164379    0.0135176
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0050067   -0.0446814    0.0346681
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0602236   -0.1907585    0.0703113
9-12 months    ki1000108-IRC              INDIA                          4+                   NA                 0.0538462   -0.0256218    0.1333143
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0052545   -0.0655642    0.0550552
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0090102   -0.0393867    0.0213664
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0036586   -0.0181900    0.0108729
9-12 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0009560   -0.0243412    0.0224292
9-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.0365278   -0.0588693   -0.0141864
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0164739   -0.0106166    0.0435645
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0619415   -0.1182885   -0.0055944
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0390212   -0.0797298    0.0016874
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0010240   -0.0150035    0.0129555
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0112432   -0.0061917    0.0286781
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0022655   -0.0102833    0.0148143
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0034011   -0.0310666    0.0242643
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0319189   -0.0331466    0.0969845
12-15 months   ki1000108-IRC              INDIA                          4+                   NA                 0.0348889   -0.0297407    0.0995185
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0157869   -0.0743119    0.0427381
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0114968   -0.0368831    0.0138895
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0071658   -0.0191207    0.0047891
12-15 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0040053   -0.0194311    0.0274417
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0087198   -0.0218391    0.0392787
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0212309   -0.0929586    0.0504967
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0228717   -0.0085154    0.0542588
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0044001   -0.0095723    0.0183725
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0034089   -0.0183471    0.0115293
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0003038   -0.0110133    0.0104057
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0001417   -0.0242932    0.0245766
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0440014   -0.1515766    0.0635738
15-18 months   ki1000108-IRC              INDIA                          4+                   NA                 0.0429542   -0.0417642    0.1276725
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0186463   -0.0678279    0.0305354
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0051194   -0.0260965    0.0158578
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0135626   -0.0003270    0.0274521
15-18 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0067248   -0.0306196    0.0171700
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0048941   -0.0317509    0.0219627
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0426731   -0.0819052   -0.0034409
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0150643   -0.0443752    0.0142466
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0106178   -0.0224082    0.0011725
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0127716   -0.0267681    0.0012250
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0046369   -0.0145529    0.0052790
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0004328   -0.0245504    0.0236848
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0968372   -0.1906971   -0.0029773
18-21 months   ki1000108-IRC              INDIA                          4+                   NA                -0.1106590   -0.1914068   -0.0299113
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0355182   -0.0719688    0.0009324
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0213402   -0.0450451    0.0023647
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0033147   -0.0102892    0.0169185
18-21 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0122551   -0.0333200    0.0088098
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0052585   -0.0292955    0.0398125
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0241574   -0.0102527    0.0585675
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0025273   -0.0101432    0.0151978
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0087706   -0.0053705    0.0229117
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0067280   -0.0036948    0.0171507
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0234534   -0.0467703   -0.0001365
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0284396   -0.0640644    0.1209437
21-24 months   ki1000108-IRC              INDIA                          4+                   NA                 0.0026757   -0.0497830    0.0551345
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0176312   -0.0643209    0.0290584
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0010755   -0.0182153    0.0203664
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0025254   -0.0195367    0.0144859
21-24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0227280   -0.0201107    0.0655667
