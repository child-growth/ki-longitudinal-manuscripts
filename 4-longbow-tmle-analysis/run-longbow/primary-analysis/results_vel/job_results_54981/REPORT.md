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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        hhwealth_quart    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ---------------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             56     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             60     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             47     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             39     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             43     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             34     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             42     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             47     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             47     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             41     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             37     155  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             38     155  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             35     155  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             45     155  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             63     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             64     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             66     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             61     254  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             45     198  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             53     198  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             49     198  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             51     198  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             54     225  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             57     225  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             56     225  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     225  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             32      88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             15      88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             16      88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25      88  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4             86     377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1             98     377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2             96     377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3             97     377  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            148     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            166     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            170     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            156     640  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            127     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            126     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            134     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            122     509  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4              7      29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1              7      29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2              7      29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3              8      29  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            248     709  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            138     709  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            140     709  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            183     709  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4830   19864  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           4966   19864  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5010   19864  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           5058   19864  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            578    2513  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            615    2513  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            633    2513  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            687    2513  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             54     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             58     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             59     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             52     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             52     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             57     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             55     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             58     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             58     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             67     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             67     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             69     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             64     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     241  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             55     241  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     241  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     241  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             60     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             58     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     239  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             80     307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75     307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             79     307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             73     307  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4             94     397  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            105     397  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2             98     397  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            100     397  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            133     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            156     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            163     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            146     598  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            409    1656  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            501    1656  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            332    1656  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            414    1656  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            118     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            117     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            122     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            112     469  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4             51     214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1             59     214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2             52     214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3             52     214  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            284     780  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            146     780  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            156     780  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            194     780  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           3653   12574  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2708   12574  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2937   12574  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           3276   12574  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            430    1839  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            455    1839  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            458    1839  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            496    1839  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             49     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             56     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             58     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             46     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             48     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             57     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             56     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             56     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             67     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             60     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             58     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             60     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             59     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             50     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             60     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             62     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             62     225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             48     225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             56     225  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             77     313  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             76     313  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             84     313  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             76     313  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4             99     407  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            105     407  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            100     407  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            103     407  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            123     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            148     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            150     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            144     565  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            359    1480  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            440    1480  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            311    1480  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            370    1480  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            119     481  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            123     481  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128     481  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            111     481  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4             52     214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1             59     214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2             52     214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3             51     214  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            298     799  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            156     799  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            166     799  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            179     799  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            153     559  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            132     559  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            131     559  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            143     559  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            770    3052  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            749    3052  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            760    3052  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            773    3052  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             49     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             57     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             58     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             43     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             47     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             58     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             53     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             65     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             53     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             58     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3             59     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             53     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             59     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             60     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             45     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             60     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     224  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             79     317  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75     317  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             85     317  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             78     317  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4             98     400  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            102     400  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2             98     400  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            102     400  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            123     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            150     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            148     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            145     566  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            257    1075  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            338    1075  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            234    1075  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            246    1075  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            119     469  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            116     469  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            127     469  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            107     469  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3             49     212  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            335     898  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            179     898  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            184     898  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            200     898  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            110     383  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1             92     383  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2             80     383  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            101     383  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            861    3499  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            871    3499  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            861    3499  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            906    3499  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             39     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             56     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             38     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             42     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             58     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             64     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             49     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             53     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             58     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             50     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             60     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             56     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             43     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     226  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             84     329  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77     329  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             86     329  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             82     329  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4             95     390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            100     390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2             97     390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3             98     390  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            112     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            141     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            143     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            136     532  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            187     786  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            238     786  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            175     786  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            186     786  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            125     469  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            112     469  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            126     469  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            106     469  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4             47     199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1             56     199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2             48     199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3             48     199  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            329     855  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            161     855  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            184     855  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            181     855  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             40     126  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             31     126  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             24     126  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             31     126  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            864    3547  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            878    3547  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            886    3547  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            919    3547  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             37     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             58     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             52     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             34     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             50     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             57     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             58     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             66     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             43     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             49     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             55     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             45     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             57     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             40     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57     217  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             83     321  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77     321  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             83     321  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             78     321  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4             92     382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            102     382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2             93     382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3             95     382  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            111     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            140     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            145     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            132     528  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            153     662  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            207     662  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            141     662  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            161     662  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            128     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            117     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            107     480  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4             45     189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1             53     189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2             45     189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3             46     189  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            291     772  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            146     772  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            169     772  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            166     772  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             31     119  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             30     119  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             25     119  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             33     119  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            838    3548  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            883    3548  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            920    3548  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            907    3548  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             31     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             52     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             26     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             50     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             53     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             56     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             58     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             64     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             40     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             45     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             53     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             49     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             60     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             60     204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             33     204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             57     204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             54     204  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             80     305  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75     305  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             77     305  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             73     305  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4             90     379  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            102     379  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2             91     379  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3             96     379  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            118     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            143     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            144     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            136     541  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              2       9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              2       9  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            115     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            106     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            124     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            100     445  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4             44     183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1             50     183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2             44     183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3             45     183  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            281     765  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            149     765  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            162     765  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            173     765  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            143     474  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             98     474  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            116     474  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            117     474  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             29     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             23     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             38     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             57     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             54     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             55     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             62     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             40     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             34     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             53     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             63     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             48     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             61     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             60     204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57     204  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             79     308  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77     308  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             76     308  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             76     308  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4             93     389  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            103     389  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2             94     389  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3             99     389  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4             95     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            126     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            126     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            124     471  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4             92     342  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1             75     342  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2             97     342  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3             78     342  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4              5      38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1             14      38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2             10      38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3              9      38  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            312     843  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            166     843  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            177     843  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            188     843  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            122     405  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             84     405  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            102     405  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             97     405  y_rate_len       


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
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/e4621bc5-777f-446b-840e-7063dcf9a64d/b13b82d7-cec6-4b7d-8bad-e61a60bdc507/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e4621bc5-777f-446b-840e-7063dcf9a64d/b13b82d7-cec6-4b7d-8bad-e61a60bdc507/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e4621bc5-777f-446b-840e-7063dcf9a64d/b13b82d7-cec6-4b7d-8bad-e61a60bdc507/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                3.4074637   3.3058809   3.5090465
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                3.3580373   3.1995869   3.5164876
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                3.2791340   3.1545353   3.4037326
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                3.3542061   3.2227497   3.4856625
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                3.7241542   3.5410018   3.9073067
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                3.9494868   3.7315609   4.1674127
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                3.9108967   3.6620900   4.1597035
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                3.7349043   3.4825067   3.9873019
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                3.1803567   3.0096545   3.3510589
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                3.4096296   3.2313710   3.5878882
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                3.3542707   3.1592221   3.5493192
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                3.3564279   3.1656871   3.5471686
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                3.5260846   3.3186786   3.7334905
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                3.7914784   3.6441355   3.9388213
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                3.6720751   3.4615942   3.8825560
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                3.5414155   3.3735605   3.7092705
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                3.0917453   2.9534692   3.2300213
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                3.0718441   2.9314774   3.2122109
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                2.9935966   2.8699041   3.1172891
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                3.1332611   2.9997687   3.2667535
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                3.2673152   3.0662833   3.4683472
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                3.0378654   2.8239591   3.2517716
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                3.3212449   3.1145352   3.5279545
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                3.1575200   2.9759012   3.3391389
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                3.3064002   3.1740522   3.4387482
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                3.2454962   3.1059466   3.3850459
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                3.3670668   3.2146528   3.5194808
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                3.1341755   2.9508653   3.3174858
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                3.1636516   2.7759434   3.5513598
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                3.5720089   2.9926155   4.1514023
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                3.4976313   2.9593089   4.0359537
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                3.7655769   3.3955804   4.1355735
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                3.2232691   3.0104813   3.4360568
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                2.9369361   2.7447132   3.1291590
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                3.0718128   2.8795640   3.2640615
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                3.2877471   3.0809994   3.4944949
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                3.2063340   3.1314037   3.2812643
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                3.3329574   3.2602610   3.4056538
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                3.2639913   3.1951060   3.3328765
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                3.2169499   3.1345458   3.2993539
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                3.5487340   3.4545448   3.6429231
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                3.6019219   3.4976899   3.7061540
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                3.6453227   3.5492648   3.7413806
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                3.5877156   3.4775318   3.6978993
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                3.9898145   3.8052975   4.1743315
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                3.6471591   3.2148518   4.0794664
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                3.3840446   3.1441402   3.6239490
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                3.5583976   3.2016959   3.9150994
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                2.5745874   2.4972231   2.6519517
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                2.5411189   2.4535199   2.6287180
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                2.5876599   2.4913281   2.6839917
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                2.6276531   2.5413863   2.7139199
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                3.7082755   3.6907285   3.7258226
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                3.6157817   3.5965677   3.6349958
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                3.6560511   3.6370542   3.6750479
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                3.6790224   3.6619296   3.6961152
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                3.0084986   2.9091398   3.1078575
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                2.9846900   2.8920560   3.0773240
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                3.0078034   2.9179905   3.0976164
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                3.0318807   2.9105020   3.1532593
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                1.9242603   1.8296938   2.0188267
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                1.9840438   1.8815416   2.0865460
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                1.9313811   1.8274443   2.0353178
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                1.8631814   1.7611226   1.9652402
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                2.2197245   2.0657074   2.3737416
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                2.0565605   1.8923768   2.2207441
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                2.1267726   1.9613848   2.2921604
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                2.2148332   2.0490795   2.3805870
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                1.8658477   1.7562749   1.9754205
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                1.8372132   1.6930300   1.9813964
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                1.9248683   1.7939318   2.0558047
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                1.8936376   1.7703314   2.0169438
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                2.0321394   1.9275343   2.1367445
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                2.0028894   1.8939885   2.1117903
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                1.9817569   1.8658516   2.0976622
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                1.8437851   1.7243466   1.9632235
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                1.9781838   1.8374043   2.1189632
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                2.0889343   1.9479628   2.2299058
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                2.0428050   1.9064717   2.1791382
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                1.9361528   1.8169268   2.0553788
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                2.0829176   1.9186639   2.2471712
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                2.0523957   1.8752217   2.2295697
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                1.7827454   1.6302533   1.9352375
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                2.0463528   1.8893084   2.2033972
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7419555   1.6433658   1.8405452
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.8682260   1.7153106   2.0211413
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.8133173   1.6554823   1.9711523
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.8725855   1.7324157   2.0127553
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.7886675   1.5829812   1.9943538
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                2.0078708   1.8148136   2.2009280
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.7155459   1.5207713   1.9103206
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.7179735   1.5107415   1.9252055
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                1.9186104   1.7642422   2.0729787
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                1.8342390   1.7260055   1.9424726
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                1.8537970   1.7279644   1.9796296
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                1.9540699   1.8285254   2.0796144
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.9263805   1.8572370   1.9955240
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.9822685   1.9128661   2.0516710
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.9935692   1.9339306   2.0532078
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                1.9629932   1.8887985   2.0371878
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7484403   1.6776136   1.8192670
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.8621233   1.7966139   1.9276327
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.8056433   1.7187900   1.8924967
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.7456721   1.6767467   1.8145975
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.7104629   1.6312302   1.7896956
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                1.7283707   1.6479477   1.8087938
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.6688929   1.5930321   1.7447538
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                1.7406246   1.6576777   1.8235715
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                2.0942239   1.9897679   2.1986799
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                2.1004366   1.9979141   2.2029590
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                2.1086366   2.0205630   2.1967101
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                2.0093890   1.9123985   2.1063796
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                1.7698345   1.7219863   1.8176826
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                1.7012392   1.6299916   1.7724868
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                1.7386239   1.6600858   1.8171620
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                1.8032537   1.7411725   1.8653349
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                1.9290661   1.9100448   1.9480875
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                1.9174218   1.8953576   1.9394859
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                1.9103275   1.8889734   1.9316817
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                1.9146367   1.8953574   1.9339160
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.9303445   1.8724071   1.9882819
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.8999652   1.8408489   1.9590815
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.8720150   1.8209981   1.9230319
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.8881725   1.8235405   1.9528044
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                1.2909195   1.2235400   1.3582990
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                1.2821342   1.1943443   1.3699242
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                1.2184770   1.1418354   1.2951186
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                1.1964902   1.1086280   1.2843525
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                1.5574479   1.3871944   1.7277014
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                1.4500969   1.3032869   1.5969069
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                1.3771818   1.2294883   1.5248753
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                1.5143367   1.3312458   1.6974276
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                1.2533284   1.1661881   1.3404688
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                1.2422621   1.1001340   1.3843902
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                1.2264112   1.1271050   1.3257174
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                1.2653569   1.1561807   1.3745331
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                1.3180984   1.2388488   1.3973481
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                1.4746061   1.3724704   1.5767418
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                1.3506804   1.2600913   1.4412695
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                1.2887622   1.2110186   1.3665059
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                1.2750480   1.1681017   1.3819942
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                1.3474381   1.2540792   1.4407971
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                1.3662846   1.2431491   1.4894201
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                1.2948496   1.1701583   1.4195408
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                1.5538738   1.4262817   1.6814659
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                1.2664707   1.1349869   1.3979545
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                1.3670506   1.2539659   1.4801353
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                1.2946701   1.1536786   1.4356616
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.2601560   1.0620789   1.4582331
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.2173753   1.0912866   1.3434639
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.1825158   1.0336010   1.3314307
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.0592504   0.9172402   1.2012606
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.2622653   1.1054060   1.4191246
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                1.1651006   1.0125953   1.3176060
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.1601074   1.0085191   1.3116957
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.2927467   1.1205940   1.4648993
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                1.4633044   1.3397481   1.5868607
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                1.3799867   1.2869736   1.4729998
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                1.3101968   1.2304688   1.3899248
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                1.3470654   1.2533494   1.4407814
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.2287519   1.1771776   1.2803263
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.3424341   1.2925184   1.3923498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.3044646   1.2535027   1.3554265
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                1.2440186   1.1956120   1.2924252
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.2962016   1.2240864   1.3683167
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.3229838   1.2530194   1.3929481
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.3051603   1.2278704   1.3824503
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.3734593   1.2967458   1.4501728
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.2892417   1.2211718   1.3573117
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                1.3740694   1.2663066   1.4818322
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.3023915   1.2202090   1.3845741
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                1.2939232   1.2295614   1.3582850
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.4604003   1.3767896   1.5440111
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                1.3425954   1.2387315   1.4464593
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.4356628   1.3419264   1.5293992
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                1.3647179   1.2646322   1.4648036
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                1.1403386   1.0952165   1.1854607
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                1.1315527   1.0714639   1.1916416
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                1.0709769   1.0071550   1.1347988
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                1.0702480   1.0146676   1.1258284
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                1.4722453   1.4029053   1.5415853
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                1.4427725   1.3538760   1.5316689
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                1.4423028   1.3796335   1.5049721
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                1.4722319   1.4014430   1.5430208
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.3609040   1.3209564   1.4008516
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.3006360   1.2648233   1.3364487
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.2901739   1.2457636   1.3345842
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.3477362   1.3040010   1.3914714
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.9684632   0.8932090   1.0437174
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                1.0066042   0.9184055   1.0948029
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.9581853   0.8836440   1.0327266
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                1.0298253   0.9506655   1.1089850
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                1.3632085   1.2074359   1.5189811
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                1.2180671   1.1042106   1.3319235
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                1.2955821   1.1208292   1.4703350
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                1.2999855   1.1577824   1.4421886
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.9258963   0.8544798   0.9973128
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.9116198   0.8219493   1.0012903
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.9890729   0.9154529   1.0626928
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                1.0026212   0.9282512   1.0769912
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                1.0653131   0.9765237   1.1541024
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                1.0829487   0.9970415   1.1688559
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                1.1598604   1.0757665   1.2439542
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                1.0538984   0.9886144   1.1191824
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                1.0753839   0.9755923   1.1751756
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                1.0665286   0.9676532   1.1654039
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                1.1122864   1.0129706   1.2116022
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                1.1281610   1.0044152   1.2519069
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                1.0234489   0.8807499   1.1661480
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                1.0615355   0.9244128   1.1986582
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.9939944   0.8602832   1.1277056
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.9884111   0.8738738   1.1029485
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8082714   0.6081177   1.0084251
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8233392   0.6787251   0.9679534
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7852494   0.6366638   0.9338350
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.8772297   0.7348141   1.0196452
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8595860   0.7255798   0.9935921
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8565632   0.7332605   0.9798659
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9124388   0.7960597   1.0288179
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.9643969   0.7787522   1.1500417
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                1.1106803   1.0322092   1.1891514
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                1.1747006   1.0905841   1.2588172
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                1.1462609   1.0653959   1.2271259
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                1.0609423   0.9901687   1.1317158
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.0084779   0.9587495   1.0582062
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.0807623   1.0266857   1.1348390
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.0755473   1.0193416   1.1317531
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                1.0262228   0.9676395   1.0848060
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.1378946   1.0714956   1.2042936
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.0709038   1.0055041   1.1363036
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.1310499   1.0594373   1.2026624
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.0171023   0.9453213   1.0888833
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.0479080   0.9957230   1.1000930
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.9572036   0.8639140   1.0504931
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.9990795   0.9220322   1.0761269
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.9799137   0.9265888   1.0332386
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.2634409   1.1783577   1.3485241
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                1.1907712   1.1097515   1.2717908
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.2312828   1.1541559   1.3084098
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                1.1658454   1.0861248   1.2455660
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.9484493   0.9067785   0.9901201
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.9395535   0.8802094   0.9988976
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.9722907   0.9169018   1.0276795
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.9163631   0.8637539   0.9689723
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                1.1142957   1.0215042   1.2070872
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                1.0194969   0.9075887   1.1314050
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                1.1134259   1.0247052   1.2021466
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                1.1475480   1.0569161   1.2381800
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.0862090   1.0457397   1.1266783
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.0705762   1.0389561   1.1021964
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.0631502   1.0250174   1.1012831
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.0661526   1.0336867   1.0986186
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.9500375   0.8797297   1.0203454
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.8766035   0.7659205   0.9872865
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.8844622   0.8106580   0.9582664
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.9203707   0.8355545   1.0051869
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                1.1751143   1.0685794   1.2816493
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                1.0852961   0.9470103   1.2235818
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                1.0889093   0.9335146   1.2443041
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                1.1931916   1.1045049   1.2818784
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.9520636   0.8788710   1.0252562
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.9049341   0.8149095   0.9949586
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.9135759   0.8447439   0.9824078
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.8989412   0.8104821   0.9874002
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                1.1028245   1.0345455   1.1711035
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.8593259   0.7715392   0.9471127
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.9021959   0.8228879   0.9815039
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.9270507   0.8537246   1.0003767
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.8962441   0.7821135   1.0103748
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.9406379   0.8531683   1.0281075
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.8416891   0.7502421   0.9331361
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.8939624   0.8135834   0.9743414
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.9591540   0.8492457   1.0690623
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.8572993   0.7536733   0.9609254
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.9631528   0.8384103   1.0878952
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.8852607   0.7458479   1.0246736
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8216657   0.6971211   0.9462104
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8225184   0.6791144   0.9659225
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9560622   0.8280094   1.0841150
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.8723513   0.7453604   0.9993422
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8544541   0.7332748   0.9756335
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8544978   0.7014737   1.0075220
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9012150   0.7649599   1.0374702
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7822464   0.6248506   0.9396422
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.9773675   0.8685145   1.0862205
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.9582307   0.8825567   1.0339046
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.9689048   0.8986718   1.0391377
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.9011362   0.8225652   0.9797072
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8907687   0.8398998   0.9416376
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.9760037   0.9206590   1.0313483
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.0026552   0.9492646   1.0560458
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.9513860   0.9041731   0.9985990
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.9614163   0.8872425   1.0355901
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.9353633   0.8637766   1.0069499
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9102517   0.8223922   0.9981112
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.9243962   0.8549758   0.9938166
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.8663384   0.8201975   0.9124792
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.8424091   0.7883887   0.8964295
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.8705116   0.8197301   0.9212931
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.9450183   0.8629148   1.0271219
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.9083275   0.8179643   0.9986907
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.9307275   0.8567459   1.0047091
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.9161272   0.8317149   1.0005395
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.9970462   0.8993879   1.0947045
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7952515   0.7474912   0.8430118
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8088549   0.7500847   0.8676252
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7585584   0.7038795   0.8132372
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7829121   0.7262605   0.8395636
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.8718839   0.6299094   1.1138584
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                1.1607673   0.9564335   1.3651011
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.9763969   0.8141559   1.1386380
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.8982125   0.7728118   1.0236132
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.9664876   0.9344241   0.9985511
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.9188387   0.8893519   0.9483255
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.9560361   0.9228348   0.9892373
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.9245400   0.8938099   0.9552700
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.8263720   0.7475543   0.9051897
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.7957583   0.6914041   0.9001124
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.8027690   0.7427365   0.8628014
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.8630648   0.7966348   0.9294947
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                1.0405262   0.9186322   1.1624201
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.9312063   0.8220715   1.0403412
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.9633107   0.8238941   1.1027272
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.9801500   0.8736482   1.0866517
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.8146180   0.7447108   0.8845252
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.8721387   0.7872810   0.9569964
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.8599082   0.7941943   0.9256221
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.8379878   0.7663354   0.9096401
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.8939332   0.8191597   0.9687067
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.8302994   0.7390128   0.9215859
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.8542361   0.7677355   0.9407367
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.7852233   0.7014753   0.8689714
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.8803831   0.7916398   0.9691264
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.8576920   0.7776726   0.9377113
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.8004714   0.7110799   0.8898628
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.8670610   0.7895587   0.9445633
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.9385224   0.8391534   1.0378914
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                1.0074104   0.8876852   1.1271355
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.8513555   0.7502833   0.9524276
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.7729527   0.6721596   0.8737457
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8234467   0.7215183   0.9253751
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6767679   0.5278072   0.8257285
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.5943530   0.4645355   0.7241705
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6534690   0.5376382   0.7692998
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7704085   0.6480215   0.8927954
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7563718   0.5915443   0.9211993
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6136569   0.5105242   0.7167897
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7757543   0.6557245   0.8957841
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.8898513   0.8127193   0.9669832
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.8665090   0.7871480   0.9458700
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.9007122   0.8167121   0.9847123
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.8016776   0.7288695   0.8744857
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8611091   0.8107913   0.9114268
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.8604268   0.8143812   0.9064725
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8647520   0.8196804   0.9098236
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.8398559   0.7864173   0.8932946
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8776395   0.7925182   0.9627608
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.0045941   0.9282891   1.0808991
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9262342   0.8292361   1.0232324
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.9114972   0.8281707   0.9948237
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.7717858   0.7230149   0.8205566
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.7495562   0.6815925   0.8175199
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.7634506   0.7117221   0.8151790
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.7340843   0.6181057   0.8500629
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.0196450   0.9247772   1.1145127
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.9951835   0.9076549   1.0827120
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.9476012   0.8550211   1.0401814
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.9663377   0.8652543   1.0674211
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7809152   0.7351411   0.8266894
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7306533   0.6572204   0.8040862
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7089106   0.6425914   0.7752297
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7167299   0.6459267   0.7875331
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.8078502   0.6388080   0.9768924
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.7488313   0.6207967   0.8768659
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.8087384   0.6271835   0.9902934
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.9166876   0.7839776   1.0493976
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.8435227   0.8103357   0.8767098
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.8599078   0.8313937   0.8884220
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.8519370   0.8184899   0.8853841
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.8812211   0.8461362   0.9163060
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.8717779   0.8127216   0.9308342
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.8193161   0.7162620   0.9223703
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.7756238   0.7168006   0.8344470
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.7711220   0.7008009   0.8414431
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.8918494   0.7437345   1.0399643
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.9034923   0.7622303   1.0447543
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                1.0310383   0.8487686   1.2133079
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.8882120   0.7914631   0.9849610
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.8871230   0.8177704   0.9564755
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.8403844   0.7529864   0.9277825
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.9312049   0.8670113   0.9953986
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.8664145   0.8023796   0.9304495
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.7529188   0.6858505   0.8199871
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.9115019   0.8258859   0.9971179
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.8364845   0.7600807   0.9128882
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.7831294   0.7014246   0.8648342
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.8408408   0.7594849   0.9221966
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.8135078   0.7069021   0.9201134
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.7517682   0.6793740   0.8241623
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.9480762   0.8554757   1.0406768
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.8223100   0.6902806   0.9543394
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.6785531   0.5671851   0.7899211
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.8013711   0.7024819   0.9002603
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.7887010   0.6865477   0.8908544
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6748680   0.5507783   0.7989576
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8617331   0.7161811   1.0072850
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7540789   0.6087681   0.8993898
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.7241116   0.5900884   0.8581348
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7246474   0.6105992   0.8386957
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5753106   0.4654891   0.6851322
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7067633   0.5706892   0.8428374
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.8025656   0.6530341   0.9520972
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.7869411   0.7063173   0.8675649
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.7037011   0.6334331   0.7739692
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.7873313   0.7099840   0.8646785
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.7799588   0.6981856   0.8617320
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.7955080   0.7459359   0.8450801
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.9153781   0.8692234   0.9615327
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8428108   0.7965799   0.8890416
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.7937945   0.7449999   0.8425891
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.9149756   0.8678255   0.9621257
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.9131066   0.8405183   0.9856950
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.8994218   0.8495317   0.9493119
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8875989   0.7759511   0.9992467
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.9569234   0.8650026   1.0488442
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.8588443   0.7779493   0.9397393
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.9472067   0.8505747   1.0438388
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.9665674   0.8828856   1.0502491
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7786131   0.7359490   0.8212771
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7476962   0.6826082   0.8127842
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7448082   0.6766778   0.8129386
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7132441   0.6416761   0.7848121
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.8504997   0.7750254   0.9259741
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.7929956   0.6945992   0.8913920
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.7510766   0.6265860   0.8755671
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.8075366   0.7329192   0.8821541
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.7632973   0.6983308   0.8282638
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.7536535   0.6449887   0.8623182
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.7776183   0.7038202   0.8514164
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.7771074   0.7184854   0.8357295
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.7923830   0.7214004   0.8633656
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.7833761   0.6932947   0.8734575
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.7526956   0.6260917   0.8792995
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.7884984   0.7153520   0.8616448
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.8493291   0.7826524   0.9160058
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.8143401   0.7595430   0.8691371
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.7987981   0.7252068   0.8723894
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.8350552   0.7848335   0.8852768
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.7908744   0.6942930   0.8874558
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.7353352   0.6455571   0.8251133
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.8118276   0.7272773   0.8963779
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.7957454   0.7378236   0.8536671
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.8187661   0.7284927   0.9090394
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.7968529   0.6951386   0.8985671
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.6591034   0.5709096   0.7472972
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.6763193   0.5879352   0.7647034
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.8723421   0.7791680   0.9655161
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.8691760   0.6971521   1.0411999
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.7866782   0.6896107   0.8837457
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.8688965   0.7834014   0.9543917
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7489417   0.6472838   0.8505996
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8442910   0.6667624   1.0218196
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6581822   0.5124314   0.8039331
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.7044373   0.5921119   0.8167627
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6744378   0.5761898   0.7726858
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.6997511   0.5567911   0.8427112
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6878396   0.5817665   0.7939127
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7367651   0.5893789   0.8841513
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.7218082   0.6373926   0.8062237
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6542644   0.5857456   0.7227831
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6851970   0.5978311   0.7725630
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.7753907   0.6729903   0.8777912
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.7335166   0.6776023   0.7894309
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.7444987   0.6927776   0.7962199
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.7537799   0.7045671   0.8029927
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.8127420   0.7638022   0.8616817
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.7863490   0.7059862   0.8667118
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.7647523   0.6935935   0.8359112
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.7820054   0.7061177   0.8578931
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8651517   0.7282814   1.0020221
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.0124849   0.8046538   1.2203160
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.9254472   0.7860447   1.0648496
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.0274973   0.8756221   1.1793725
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.8043787   0.6853502   0.9234072
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.6740502   0.6339644   0.7141361
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.6513450   0.5985092   0.7041809
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7086157   0.6569750   0.7602564
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.6826766   0.6358929   0.7294603
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.7591494   0.6913120   0.8269869
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.7530344   0.6247472   0.8813216
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.7037790   0.6136025   0.7939554
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.7586886   0.6642550   0.8531223


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3306152   3.2408417   3.4203888
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6214116   3.5288934   3.7139297
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0720111   3.0070171   3.1370050
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1667059   3.0657224   3.2676894
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2602600   3.1826202   3.3378997
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                3.6418727   3.4619177   3.8218277
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5857395   2.5420908   2.6293882
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6645447   3.6543091   3.6747803
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.0081001   2.9551156   3.0610847
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9768255   1.8961556   2.0574955
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933135   1.7575160   1.8291109
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7591266   1.7281267   1.7901266
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9201969   1.9097350   1.9306589
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3249931   1.2883838   1.3616025
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.1078835   1.0805783   1.1351886
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4589363   1.4224162   1.4954563
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.3241671   1.3034835   1.3448507
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0855731   1.0514671   1.1196792
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9449661   0.9199056   0.9700266
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.1007887   1.0539615   1.1476158
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0714466   1.0534634   1.0894298
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9319267   0.8950348   0.9688186
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7873717   0.7605685   0.8141750
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.9578403   0.8612449   1.0544357
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9414130   0.9256041   0.9572219
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9372014   0.8951355   0.9792674
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7430746   0.7129350   0.7732142
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8227868   0.7513696   0.8942040
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8599047   0.8433807   0.8764287
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7511843   0.7223646   0.7800040
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8198090   0.7732927   0.8663254
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9350807   0.8543561   1.0158053
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6794009   0.6558371   0.7029647
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7505036   0.7048983   0.7961088


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0494264   -0.2326623    0.1338095
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1283297   -0.2868191    0.0301596
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0532576   -0.2149755    0.1084602
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.2253326   -0.0599943    0.5106594
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.1867425   -0.1221836    0.4956686
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0107501   -0.3006666    0.3221667
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.2292729   -0.0162269    0.4747726
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.1739140   -0.0875755    0.4354035
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.1760712   -0.0826541    0.4347964
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.2653938    0.0111753    0.5196123
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.1459906   -0.1466235    0.4386047
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0153310   -0.2479023    0.2785643
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0199011   -0.2170067    0.1772045
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0981486   -0.2850205    0.0887232
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0415158   -0.1509448    0.2339765
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2294499   -0.5256663    0.0667665
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0539296   -0.2347274    0.3425866
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1097952   -0.3796382    0.1600478
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0609039   -0.2519404    0.1301325
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0606666   -0.1417080    0.2630412
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1722246   -0.3968519    0.0524027
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.4083573   -0.2894963    1.1062109
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3339797   -0.3312759    0.9992354
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.6019253    0.0627623    1.1410884
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.2863330   -0.5621586   -0.0105073
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1514563   -0.4267437    0.1238311
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0644781   -0.2227060    0.3516621
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1266234    0.0221944    0.2310524
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0576573   -0.0441513    0.1594658
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0106159   -0.1007475    0.1219793
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0531880   -0.0863627    0.1927386
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0965888   -0.0370683    0.2302458
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0389816   -0.1048457    0.1828089
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3426554   -0.8126938    0.1273830
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.6057699   -0.9084259   -0.3031139
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.4314168   -0.8330170   -0.0298167
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0334685   -0.1502180    0.0832810
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0130725   -0.1103213    0.1364664
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0530657   -0.0627361    0.1688675
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0924938   -0.1174437   -0.0675440
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0522245   -0.0762158   -0.0282331
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0292531   -0.0517809   -0.0067254
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0238087   -0.1582314    0.1106141
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0006952   -0.1354614    0.1340711
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0233820   -0.1307660    0.1775301
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0597835   -0.0805851    0.2001521
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0071208   -0.1345219    0.1487635
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0610788   -0.2004024    0.0782448
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1631641   -0.3886246    0.0622964
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0929519   -0.3195194    0.1336155
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0048913   -0.2318660    0.2220833
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0286345   -0.2103480    0.1530791
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0590206   -0.1116673    0.2297084
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0277899   -0.1370983    0.1926781
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0292500   -0.1796614    0.1211614
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0503825   -0.2061267    0.1053618
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.1883543   -0.3468472   -0.0298615
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1107505   -0.0881481    0.3096492
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0646212   -0.1315299    0.2607723
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0420310   -0.2271809    0.1431190
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0305218   -0.2734594    0.2124157
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3001721   -0.5240958   -0.0762485
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0365648   -0.2636718    0.1905423
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1262705   -0.0557895    0.3083305
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0713618   -0.1149389    0.2576625
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1306300   -0.0411890    0.3024490
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2192033   -0.0629947    0.5014013
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0731216   -0.3573690    0.2111259
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0706940   -0.3625475    0.2211595
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0843714   -0.2727697    0.1040269
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0648134   -0.2632347    0.1336078
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0354594   -0.1634021    0.2343210
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0558880   -0.0422543    0.1540304
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0671887   -0.0239312    0.1583086
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0366127   -0.0648881    0.1381135
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1136830    0.0170700    0.2102960
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0572031   -0.0550644    0.1694705
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0027682   -0.1016529    0.0961166
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0179078   -0.0953981    0.1312138
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0415699   -0.1511255    0.0679856
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0301617   -0.0846192    0.1449426
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0062127   -0.1398819    0.1523073
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0144127   -0.1225214    0.1513468
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0848349   -0.2275404    0.0578707
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0685953   -0.1544941    0.0173035
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0312106   -0.1232436    0.0608225
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0334192   -0.0450129    0.1118513
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0116444   -0.0407469    0.0174582
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0187386   -0.0463825    0.0089053
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0144294   -0.0422736    0.0134148
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0303793   -0.1127571    0.0519985
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0583295   -0.1355026    0.0188436
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0421720   -0.1262245    0.0418804
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0087853   -0.1191121    0.1015415
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0724425   -0.1755587    0.0306737
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0944293   -0.2050666    0.0162081
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1073509   -0.3327902    0.1180884
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.1802661   -0.4056184    0.0450862
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0431112   -0.2928898    0.2066674
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0110663   -0.1781324    0.1559997
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0269172   -0.1584703    0.1046359
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0120285   -0.1311614    0.1552184
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1565076    0.0275097    0.2855056
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0325819   -0.0883738    0.1535377
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0293362   -0.1407774    0.0821049
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0723902   -0.0692180    0.2139984
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0912367   -0.0719198    0.2543931
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0198016   -0.1443298    0.1839330
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2874031   -0.4705372   -0.1042690
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1868233   -0.3594534   -0.0141931
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2592038   -0.4516815   -0.0667260
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0427807   -0.2784391    0.1928776
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0776402   -0.3258642    0.1705838
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.2009056   -0.4446546    0.0428434
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0971647   -0.3173307    0.1230013
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.1021579   -0.3210921    0.1167763
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0304813   -0.2039820    0.2649447
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0833177   -0.2380748    0.0714395
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1531076   -0.3003825   -0.0058326
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1162390   -0.2711149    0.0386369
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1136822    0.0419207    0.1854437
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0757126    0.0032043    0.1482210
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0152667   -0.0553388    0.0858721
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0267822   -0.0740794    0.1276438
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0089588   -0.0970050    0.1149225
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0772577   -0.0283734    0.1828889
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0848277   -0.0426090    0.2122645
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0131498   -0.0941251    0.1204247
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0046815   -0.0895020    0.0988649
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.1178049   -0.2512789    0.0156690
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0247375   -0.1504564    0.1009813
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0956824   -0.2262412    0.0348763
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0087858   -0.0839101    0.0663384
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0693617   -0.1473360    0.0086126
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0700906   -0.1416584    0.0014773
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0294728   -0.1421579    0.0832123
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0299425   -0.1233221    0.0634370
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0000134   -0.0993033    0.0992765
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0602680   -0.1130048   -0.0075313
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0707301   -0.1309770   -0.0104832
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0131678   -0.0711833    0.0448477
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0381410   -0.0778680    0.1541501
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0102779   -0.1159792    0.0954234
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0613621   -0.0477083    0.1704324
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1451414   -0.3375541    0.0472712
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0676264   -0.3022314    0.1669786
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0632230   -0.2747187    0.1482727
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0142765   -0.1282501    0.0996972
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0631766   -0.0408458    0.1671989
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0767249   -0.0263984    0.1798482
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0176357   -0.1065097    0.1417810
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0945473   -0.0273530    0.2164476
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0114146   -0.1218957    0.0990664
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0088554   -0.1502100    0.1324992
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0369024   -0.1050721    0.1788770
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0527771   -0.1071087    0.2126629
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0380866   -0.1603436    0.2365168
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0294545   -0.2256011    0.1666922
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0350378   -0.2183473    0.1482718
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0150678   -0.2317341    0.2618697
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0230220   -0.2724843    0.2264403
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0689583   -0.1767016    0.3146181
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0030228   -0.1855146    0.1794691
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0528528   -0.1248161    0.2305218
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.1048110   -0.1239986    0.3336206
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0640204   -0.0509939    0.1790346
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0355806   -0.0769677    0.1481290
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0497380   -0.1553258    0.0558498
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0722844   -0.0012158    0.1457847
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0670695   -0.0080404    0.1421793
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0177449   -0.0592334    0.0947232
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0669908   -0.1603934    0.0264119
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0068447   -0.1046390    0.0909496
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1207923   -0.2184535   -0.0231311
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0907045   -0.1979862    0.0165773
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0488285   -0.1427564    0.0450994
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0679943   -0.1435369    0.0075483
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0726697   -0.1898988    0.0445593
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0321581   -0.1471284    0.0828123
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0975955   -0.2142324    0.0190415
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0088958   -0.0813897    0.0635981
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0238414   -0.0454402    0.0931231
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0320861   -0.0992248    0.0350525
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0947988   -0.2412452    0.0516475
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0008698   -0.1295785    0.1278389
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0332523   -0.0970281    0.1635328
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0156327   -0.0665205    0.0352551
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0230587   -0.0790260    0.0329085
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0200563   -0.0725460    0.0324333
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0734341   -0.2044182    0.0575500
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0655753   -0.1678149    0.0366643
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0296668   -0.1401500    0.0808163
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0898183   -0.2644671    0.0848305
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0862050   -0.2746535    0.1022435
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0180773   -0.1206244    0.1567789
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0471295   -0.1632175    0.0689585
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0384877   -0.1388875    0.0619121
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0531224   -0.1680238    0.0617791
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.2434986   -0.3549466   -0.1320505
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.2006286   -0.3052382   -0.0960190
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.1757738   -0.2762943   -0.0752533
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0443938   -0.0993996    0.1881871
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0545550   -0.2010542    0.0919442
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0022817   -0.1419751    0.1374116
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1018547   -0.2530424    0.0493331
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0039988   -0.1633184    0.1713159
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0738933   -0.2521814    0.1043948
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0008527   -0.1891792    0.1908847
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1343964   -0.0445578    0.3133507
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0506856   -0.1275240    0.2288952
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0000437   -0.1957751    0.1958626
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0467609   -0.1355742    0.2290960
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0722077   -0.2703917    0.1259763
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0191368   -0.1516236    0.1133499
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0084627   -0.1381073    0.1211818
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0762313   -0.2105744    0.0581119
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0852350    0.0097297    0.1607403
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.1118865    0.0382100    0.1855629
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0606173   -0.0087995    0.1300341
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0260530   -0.1292042    0.0770982
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0511646   -0.1666399    0.0643107
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0370201   -0.1390579    0.0650177
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0239293   -0.0950817    0.0472232
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0041732   -0.0647807    0.0731272
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0786800   -0.0152622    0.1726221
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0224000   -0.0942986    0.1390986
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0077997   -0.1164156    0.1320150
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0887187   -0.0445662    0.2220036
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0136035   -0.0623227    0.0895296
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0366931   -0.1094385    0.0360523
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0123394   -0.0867014    0.0620226
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.2888834   -0.0269077    0.6046745
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.1045130   -0.1877314    0.3967575
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0263286   -0.2468771    0.2995343
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0476489   -0.0908285   -0.0044692
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0104515   -0.0568315    0.0359284
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0419476   -0.0868153    0.0029201
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0306137   -0.1617212    0.1004938
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0236030   -0.1228802    0.0756741
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0366928   -0.0666075    0.1399930
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1093198   -0.2739741    0.0553345
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0772155   -0.2621014    0.1076705
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0603762   -0.2229462    0.1021938
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0575207   -0.0512761    0.1663175
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0452902   -0.0501566    0.1407370
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0233698   -0.0758883    0.1226278
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0636339   -0.1817007    0.0544330
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0396971   -0.1541202    0.0747260
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.1087099   -0.2211704    0.0037506
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0226911   -0.1423887    0.0970064
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0799117   -0.2062845    0.0464610
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0133221   -0.1314519    0.1048077
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0688880   -0.0868416    0.2246175
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0871669   -0.2291542    0.0548203
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1655697   -0.3074832   -0.0236563
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.1466788   -0.3272872    0.0339296
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.2290937   -0.3942191   -0.0639683
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1699776   -0.3243651   -0.0155902
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0140367   -0.2198692    0.1917959
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.1567515   -0.3172626    0.0037595
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0053458   -0.1663701    0.1770617
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0233423   -0.1340595    0.0873750
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0108610   -0.1032879    0.1250099
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0881737   -0.1943301    0.0179827
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0006822   -0.0689609    0.0675964
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0036429   -0.0638839    0.0711698
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0212532   -0.0947090    0.0522026
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1269546    0.0127008    0.2412084
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0485948   -0.0805196    0.1777091
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0338577   -0.0855038    0.1532192
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0222296   -0.1058360    0.0613768
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0083352   -0.0805932    0.0639228
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0377015   -0.1634897    0.0880868
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0244615   -0.1532431    0.1043201
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0720437   -0.2042189    0.0601315
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0533073   -0.1919634    0.0853489
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0502619   -0.1369002    0.0363763
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0720047   -0.1528919    0.0088826
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0641853   -0.1486158    0.0202452
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0590189   -0.2735542    0.1555164
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0008882   -0.2474936    0.2492700
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.1088374   -0.1049930    0.3226678
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0163851   -0.0269425    0.0597127
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0084143   -0.0380749    0.0549034
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0376984   -0.0102707    0.0856675
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0524618   -0.1718673    0.0669437
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0961541   -0.1796257   -0.0126825
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1006559   -0.1923397   -0.0089722
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0116429   -0.1930856    0.2163714
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.1391889   -0.0958694    0.3742471
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0036374   -0.1815493    0.1742746
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0467385   -0.1584506    0.0649736
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0440820   -0.0506361    0.1388000
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0207084   -0.1152530    0.0738361
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1585831    0.0495752    0.2675911
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0835657   -0.0172230    0.1843544
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0302106   -0.0754519    0.1358732
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0273330   -0.1614691    0.1068032
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0890726   -0.1980222    0.0198770
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.1072355   -0.0161569    0.2306279
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1437569   -0.3172484    0.0297346
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0209389   -0.1863583    0.1444805
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0336090   -0.2010973    0.1338794
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1868651   -0.0053027    0.3790328
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0792109   -0.1131084    0.2715302
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0492436   -0.1342807    0.2327679
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.1493368   -0.3076524    0.0089789
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0178841   -0.1954174    0.1596492
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0779182   -0.1102096    0.2660460
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0832399   -0.1903106    0.0238307
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0003902   -0.1113481    0.1121285
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0069823   -0.1221101    0.1081456
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1198701    0.0521013    0.1876389
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0473028   -0.0204816    0.1150872
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0017134   -0.0713078    0.0678809
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0018690   -0.0881611    0.0844232
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0155538   -0.0847530    0.0536455
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0273767   -0.1488230    0.0940696
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0980791   -0.2209200    0.0247618
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0097167   -0.1429437    0.1235103
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0096440   -0.1147045    0.1339924
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0309168   -0.1089689    0.0471353
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0338049   -0.1142772    0.0466675
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0653690   -0.1490534    0.0183155
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0575041   -0.1814451    0.0664369
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0994232   -0.2460703    0.0472240
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0429631   -0.1498120    0.0638858
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0096438   -0.1361258    0.1168382
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0143210   -0.0840103    0.1126523
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0138102   -0.0737090    0.1013293
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0090069   -0.1238667    0.1058529
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0396874   -0.1849330    0.1055582
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0038846   -0.1060359    0.0982667
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0349890   -0.1214484    0.0514703
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0505310   -0.1501302    0.0490682
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0142739   -0.0976666    0.0691188
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0555392   -0.1873870    0.0763087
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0209533   -0.1079509    0.1498574
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0048710   -0.1081818    0.1179239
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0219132   -0.1570848    0.1132583
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.1596627   -0.2855191   -0.0338063
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.1424468   -0.2690516   -0.0158419
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0031661   -0.1984228    0.1920907
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0856638   -0.2212062    0.0498785
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0034455   -0.1303952    0.1235041
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0953493   -0.1089044    0.2996031
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0907595   -0.2689017    0.0873828
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0445044   -0.1959008    0.1068920
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0253134   -0.1486055    0.1992322
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0134018   -0.1315796    0.1583833
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0623273   -0.1149715    0.2396262
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0675438   -0.1768691    0.0417815
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0366111   -0.1594143    0.0861921
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0535825   -0.0802300    0.1873951
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0109821   -0.0651825    0.0871468
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0202633   -0.0542679    0.0947945
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0792254    0.0048508    0.1536000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0215967   -0.1289739    0.0857805
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0043436   -0.1150295    0.1063423
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0788027   -0.0805281    0.2381335
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0870377   -0.3372912    0.1632158
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0150124   -0.2423975    0.2724223
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2081062   -0.4476089    0.0313965
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0227052   -0.0887519    0.0433415
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0345654   -0.0306407    0.0997716
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0086263   -0.0531171    0.0703697
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0061150   -0.1516174    0.1393873
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0553704   -0.1685498    0.0578089
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0004608   -0.1170720    0.1161505


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0604536   -0.1539336    0.0330265
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0948825   -0.0710251    0.2607900
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.1502585   -0.0047044    0.3052214
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0953270   -0.0790653    0.2697194
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0197342   -0.1407467    0.1012783
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1006094   -0.2835833    0.0823645
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0461402   -0.1688743    0.0765939
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.2965360   -0.0081365    0.6012084
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0850198   -0.2658944    0.0958548
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0513470   -0.0148106    0.1175047
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0502344   -0.0330085    0.1334772
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.3479418   -0.5715353   -0.1243483
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0111521   -0.0501017    0.0724058
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0437309   -0.0587004   -0.0287613
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0003985   -0.0882885    0.0874915
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0033805   -0.0792507    0.0860117
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0736430   -0.2092693    0.0619833
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0264503   -0.0746323    0.1275329
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0676793   -0.1603330    0.0249744
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0374984   -0.0837586    0.1587553
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1060920   -0.2480178    0.0358338
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0881347   -0.0087427    0.1850121
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0151205   -0.1599577    0.1901986
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0379366   -0.1672417    0.0913685
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0393652   -0.0227081    0.1014385
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0448732   -0.0171944    0.1069408
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0008944   -0.0694396    0.0676508
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0100398   -0.1002073    0.0801278
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0107078   -0.0504779    0.0290623
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0088692   -0.0254177    0.0076794
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0315878   -0.0820758    0.0189002
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0428744   -0.1042191    0.0184704
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0743319   -0.2168850    0.0682211
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0071048   -0.0887528    0.0745433
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0390424   -0.0324923    0.1105770
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0449486   -0.0462017    0.1360988
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1769480   -0.2895444   -0.0643517
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0694004   -0.2268701    0.0880693
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0449272   -0.1833500    0.0934956
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0909034   -0.1923039    0.0104971
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0536665    0.0073856    0.0999475
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0287916   -0.0351362    0.0927193
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0279609   -0.0362183    0.0921401
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0629767   -0.1398847    0.0139312
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0324551   -0.0680539    0.0031438
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0133091   -0.0729919    0.0463737
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0367369   -0.0711693   -0.0023045
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0211814   -0.0429368    0.0852995
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0649526   -0.1940094    0.0641043
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0555739   -0.0078005    0.1189483
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0239241   -0.0509667    0.0988149
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0231284   -0.0625947    0.1088516
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0091231   -0.1286022    0.1103561
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0048363   -0.1541772    0.1638497
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0399365   -0.0783958    0.1582687
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0127931   -0.0557074    0.0812937
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0414971   -0.0048401    0.0878343
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0523215   -0.1113785    0.0067355
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0495319   -0.0998098    0.0007460
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0585641   -0.1315706    0.0144424
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0034832   -0.0361922    0.0292259
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0135071   -0.0916339    0.0646198
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0147623   -0.0490035    0.0194788
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0359371   -0.0981421    0.0262679
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0329370   -0.1247023    0.0588284
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0415699   -0.1060031    0.0228632
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.1514121   -0.2138338   -0.0889903
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0045162   -0.0951895    0.0861571
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0395246   -0.1354566    0.0564074
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0346901   -0.0725325    0.1419127
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0010817   -0.1109110    0.1087476
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0220136   -0.1108482    0.0668211
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0689813    0.0217826    0.1161800
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0294896   -0.0954262    0.0364471
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0133663   -0.0296147    0.0563473
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0208168   -0.0578583    0.0994920
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0078797   -0.0436564    0.0278969
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0859564   -0.0960561    0.2679689
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0250746   -0.0532141    0.0030649
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0022494   -0.0667811    0.0622823
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0384148   -0.1366636    0.0598341
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0297704   -0.0304158    0.0899566
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0530970   -0.1204901    0.0142960
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0269524   -0.0966887    0.0427840
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0513722   -0.1376265    0.0348822
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1366987   -0.2283813   -0.0450161
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0364950   -0.1435279    0.0705380
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0307297   -0.0988083    0.0373490
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0050093   -0.0505914    0.0405728
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0595619   -0.0159573    0.1350812
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0168338   -0.0653844    0.0317169
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0336218   -0.1164537    0.0492100
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0378406   -0.0761115    0.0004303
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0149366   -0.1238349    0.1537080
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0163820   -0.0124855    0.0452494
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0583932   -0.1101442   -0.0066422
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0242264   -0.0919153    0.1403682
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0084129   -0.0684837    0.0516580
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0653610    0.0049112    0.1258107
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0006031   -0.0661165    0.0673228
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0401290   -0.1471990    0.0669409
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0688358   -0.0379744    0.1756461
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0246555   -0.1263875    0.0770766
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0271389   -0.0975677    0.0432898
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0438297   -0.0006000    0.0882595
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0110800   -0.0586287    0.0364686
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0422896   -0.1233090    0.0387297
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0274287   -0.0639764    0.0091189
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0306907   -0.0983125    0.0369312
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0061210   -0.0491808    0.0614227
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0037689   -0.0577222    0.0652600
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0237778   -0.0797419    0.0321863
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0075179   -0.0867474    0.0717117
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0577155   -0.1293539    0.0139229
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0328471   -0.1170558    0.0513616
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0300089   -0.1219120    0.0618942
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0324094   -0.0606401    0.1254589
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0133953   -0.0885190    0.0617284
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0296225   -0.0207034    0.0799483
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0126822   -0.0588152    0.0841796
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0774042   -0.2732190    0.1184106
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0053507   -0.0257694    0.0364707
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0086459   -0.0721307    0.0548389
