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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             56     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             60     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             47     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             39     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             43     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             34     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             42     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             47     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             47     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             41     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             37     155  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             38     155  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             35     155  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             45     155  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             63     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             64     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             66     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             61     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             45     198  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             53     198  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             49     198  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             51     198  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             54     225  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             57     225  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             56     225  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     225  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             32      88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             15      88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             16      88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25      88  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4             86     377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1             98     377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2             96     377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3             97     377  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            148     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            166     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            170     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            156     640  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            127     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            126     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            134     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            122     509  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4              7      29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1              7      29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2              7      29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3              8      29  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            248     709  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            138     709  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            140     709  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            183     709  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4830   19864  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           4966   19864  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5010   19864  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           5058   19864  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            578    2513  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            615    2513  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            633    2513  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            687    2513  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             54     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             58     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             59     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             52     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             52     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             57     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             55     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             58     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             58     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             67     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             67     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             69     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             64     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     241  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             55     241  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     241  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     241  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             60     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             58     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     239  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             80     307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75     307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             79     307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             73     307  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4             94     397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            105     397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2             98     397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            100     397  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            133     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            156     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            163     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            146     598  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            409    1656  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            501    1656  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            332    1656  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            414    1656  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            118     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            117     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            122     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            112     469  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4             51     214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1             59     214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2             52     214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3             52     214  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            284     780  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            146     780  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            156     780  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            194     780  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           3653   12574  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2708   12574  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2937   12574  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           3276   12574  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            430    1839  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            455    1839  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            458    1839  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            496    1839  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             49     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             56     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             58     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             46     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             48     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             57     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             56     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             56     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             67     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             60     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             58     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             60     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             59     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             50     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             60     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             62     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             62     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             48     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             56     225  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             77     313  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             76     313  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             84     313  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             76     313  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4             99     407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            105     407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            100     407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            103     407  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            123     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            148     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            150     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            144     565  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            359    1480  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            440    1480  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            311    1480  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            370    1480  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            119     481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            123     481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128     481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            111     481  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4             52     214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1             59     214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2             52     214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3             51     214  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            298     799  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            156     799  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            166     799  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            179     799  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            153     559  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            132     559  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            131     559  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            143     559  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            770    3052  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            749    3052  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            760    3052  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            773    3052  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             49     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             57     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             58     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             43     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             47     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             58     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             53     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             65     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             53     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             58     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3             59     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             53     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             59     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             60     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             45     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             60     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     224  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             79     317  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75     317  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             85     317  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             78     317  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4             98     400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            102     400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2             98     400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            102     400  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            123     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            150     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            148     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            145     566  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            257    1075  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            338    1075  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            234    1075  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            246    1075  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            119     469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            116     469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            127     469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            107     469  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3             49     212  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            335     898  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            179     898  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            184     898  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            200     898  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            110     383  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1             92     383  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2             80     383  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            101     383  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            861    3499  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            871    3499  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            861    3499  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            906    3499  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             39     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             56     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             38     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             42     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             58     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             64     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             49     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             53     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             58     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             50     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             60     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             56     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             43     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     226  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             84     329  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77     329  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             86     329  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             82     329  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4             95     390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            100     390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2             97     390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3             98     390  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            112     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            141     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            143     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            136     532  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            187     786  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            238     786  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            175     786  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            186     786  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            125     469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            112     469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            126     469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            106     469  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4             47     199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1             56     199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2             48     199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3             48     199  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            329     855  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            161     855  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            184     855  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            181     855  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             40     126  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             31     126  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             24     126  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             31     126  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            864    3547  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            878    3547  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            886    3547  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            919    3547  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             37     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             58     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             52     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             34     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             50     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             57     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             58     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             66     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             43     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             49     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             55     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             45     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             57     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             40     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57     217  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             83     321  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77     321  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             83     321  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             78     321  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4             92     382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            102     382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2             93     382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3             95     382  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            111     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            140     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            145     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            132     528  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            153     662  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            207     662  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            141     662  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            161     662  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            128     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            117     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            107     480  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4             45     189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1             53     189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2             45     189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3             46     189  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            291     772  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            146     772  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            169     772  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            166     772  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             31     119  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             30     119  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             25     119  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             33     119  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            838    3548  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            883    3548  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            920    3548  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            907    3548  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             31     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             52     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             26     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             50     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             53     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             56     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             58     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             64     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             40     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             45     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             53     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             49     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             60     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             60     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             33     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             57     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             54     204  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             80     305  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75     305  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             77     305  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             73     305  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4             90     379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            102     379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2             91     379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3             96     379  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            118     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            143     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            144     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            136     541  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              2       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              2       9  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            115     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            106     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            124     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            100     445  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4             44     183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1             50     183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2             44     183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3             45     183  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            281     765  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            149     765  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            162     765  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            173     765  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            143     474  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             98     474  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            116     474  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            117     474  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             29     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             23     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             38     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             57     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             54     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             55     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             62     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             40     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             34     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             53     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             63     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             48     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             61     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             60     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57     204  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             79     308  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77     308  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             76     308  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             76     308  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4             93     389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            103     389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2             94     389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3             99     389  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4             95     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            126     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            126     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            124     471  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4             92     342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1             75     342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2             97     342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3             78     342  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4              5      38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1             14      38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2             10      38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3              9      38  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            312     843  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            166     843  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            177     843  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            188     843  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            122     405  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             84     405  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            102     405  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             97     405  y_rate_haz       


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
![](/tmp/03e20176-ac5e-4e6c-b322-ccb80e1b6f36/7e63fcce-d83b-4132-a84d-60050614d363/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/03e20176-ac5e-4e6c-b322-ccb80e1b6f36/7e63fcce-d83b-4132-a84d-60050614d363/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/03e20176-ac5e-4e6c-b322-ccb80e1b6f36/7e63fcce-d83b-4132-a84d-60050614d363/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.1072985   -0.1615617   -0.0530353
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0775164   -0.1575509    0.0025182
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.1420093   -0.2093544   -0.0746642
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.1414427   -0.2103523   -0.0725331
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.1092281    0.0138535    0.2046026
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.2050511    0.0882686    0.3218337
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.2010921    0.0789197    0.3232645
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0843391   -0.0499748    0.2186530
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1375926   -0.2254997   -0.0496855
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0180531   -0.1173273    0.0812211
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0723988   -0.1707109    0.0259133
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0591468   -0.1463092    0.0280157
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0231834   -0.0817965    0.1281633
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.1080693    0.0377908    0.1783479
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                 0.0655215   -0.0275188    0.1585617
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.0271229   -0.0563880    0.1106339
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.2449352   -0.3095211   -0.1803493
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.2439685   -0.3151177   -0.1728192
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.2944150   -0.3546666   -0.2341635
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.2300244   -0.2975702   -0.1624786
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1432946   -0.2484624   -0.0381267
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.2477631   -0.3520865   -0.1434397
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.1114022   -0.2160297   -0.0067747
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.2178980   -0.3095130   -0.1262830
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1120217   -0.1820985   -0.0419450
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1462163   -0.2144281   -0.0780045
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1031285   -0.1816945   -0.0245625
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.2048787   -0.2922803   -0.1174771
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2524929   -0.4433230   -0.0616627
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0603751   -0.2897030    0.1689527
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0614231   -0.3216761    0.1988300
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                 0.0339163   -0.1466891    0.2145217
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2049270   -0.3081303   -0.1017237
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.3372419   -0.4322502   -0.2422335
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.2872496   -0.3839225   -0.1905768
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.1840240   -0.2859652   -0.0820828
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.2123465   -0.2467171   -0.1779758
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.1491605   -0.1816114   -0.1167097
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.1812081   -0.2128134   -0.1496028
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.2142689   -0.2533097   -0.1752280
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0541134   -0.1010921   -0.0071348
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0186622   -0.0706770    0.0333526
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0155843   -0.0655828    0.0344143
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0324423   -0.0854181    0.0205335
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.2116983    0.1106556    0.3127409
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0178807   -0.2673442    0.2315828
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.1310214   -0.2551796   -0.0068632
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0512877   -0.2547109    0.1521355
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.5396363   -0.5769910   -0.5022816
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.5528064   -0.5970211   -0.5085917
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.5372395   -0.5893493   -0.4851297
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.5174332   -0.5604996   -0.4743668
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0809030    0.0725808    0.0892253
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                 0.0344689    0.0251450    0.0437927
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                 0.0547418    0.0457790    0.0637047
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                 0.0658389    0.0576267    0.0740511
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2867606   -0.3391489   -0.2343723
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.2846562   -0.3324481   -0.2368643
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.2691136   -0.3157293   -0.2224979
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.2632904   -0.3287846   -0.1977962
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0261735   -0.0728413    0.0204942
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0205918   -0.0682504    0.0270668
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0178090   -0.0691509    0.0335330
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0510341   -0.0985726   -0.0034956
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0884270    0.0204763    0.1563778
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.0133972   -0.0616525    0.0884468
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.0343341   -0.0414028    0.1100710
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0575092   -0.0225443    0.1375627
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0461454   -0.0992027    0.0069119
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0532807   -0.1230905    0.0165292
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0265605   -0.0884816    0.0353607
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0399475   -0.0981613    0.0182663
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0145204   -0.0378495    0.0668903
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0037040   -0.0560346    0.0486266
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0225693   -0.0745136    0.0293750
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0791396   -0.1373045   -0.0209747
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0156505   -0.0478373    0.0791383
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 0.0560005   -0.0112047    0.1232056
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.0419879   -0.0223787    0.1063545
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0054452   -0.0586915    0.0478012
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0489883   -0.0282287    0.1262054
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.0306075   -0.0515689    0.1127840
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0977856   -0.1645842   -0.0309871
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.0124859   -0.0624035    0.0873753
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1011779   -0.1472274   -0.0551284
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0539464   -0.1242266    0.0163337
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0799575   -0.1558153   -0.0040997
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0443647   -0.1111986    0.0224693
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1112369   -0.2093004   -0.0131735
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0072374   -0.0976655    0.0831907
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1498495   -0.2465785   -0.0531205
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1496679   -0.2486726   -0.0506632
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0428001   -0.1152879    0.0296877
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0440491   -0.0964815    0.0083834
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0670020   -0.1260307   -0.0079734
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0174605   -0.0765050    0.0415840
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0444886   -0.0769048   -0.0120725
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0244981   -0.0556523    0.0066560
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0147513   -0.0421648    0.0126621
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0293514   -0.0648293    0.0061264
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1064621   -0.1396326   -0.0732916
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0562616   -0.0862332   -0.0262900
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0798213   -0.1200212   -0.0396215
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1037165   -0.1352129   -0.0722200
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1575781   -0.1957215   -0.1194346
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.1538210   -0.1913063   -0.1163357
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.1864123   -0.2226377   -0.1501869
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.1453080   -0.1830554   -0.1075607
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0176696   -0.0328632    0.0682024
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.0241528   -0.0213288    0.0696343
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.0289050   -0.0119086    0.0697186
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0199684   -0.0658470    0.0259102
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0916794   -0.1142765   -0.0690823
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1217947   -0.1553061   -0.0882832
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1085082   -0.1459961   -0.0710204
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0781690   -0.1077521   -0.0485860
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0017810   -0.0108315    0.0072695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.0034270   -0.0137901    0.0069361
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.0065925   -0.0163855    0.0032004
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0056153   -0.0143997    0.0031692
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0044537   -0.0221349    0.0310424
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0066066   -0.0338986    0.0206853
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0205670   -0.0444122    0.0032783
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0121115   -0.0416366    0.0174136
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0517105   -0.0806810   -0.0227399
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0524121   -0.0907852   -0.0140391
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0807024   -0.1124446   -0.0489602
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0906791   -0.1283360   -0.0530221
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0447994   -0.0284206    0.1180194
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.0013819   -0.0579455    0.0607092
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.0328249   -0.0978930    0.0322431
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0362872   -0.0423993    0.1149736
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0725051   -0.1108836   -0.0341266
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0737487   -0.1337828   -0.0137147
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0827432   -0.1251301   -0.0403563
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0763113   -0.1246074   -0.0280152
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0493752   -0.0848751   -0.0138752
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.0165542   -0.0304181    0.0635265
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0398909   -0.0796087   -0.0001730
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0601696   -0.0936972   -0.0266420
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0524375   -0.0993453   -0.0055297
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0303128   -0.0720081    0.0113825
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0122278   -0.0665297    0.0420741
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0375915   -0.0950252    0.0198423
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0350596   -0.0201798    0.0902990
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0561203   -0.1140259    0.0017853
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0065947   -0.0559402    0.0427508
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0400295   -0.1014102    0.0213512
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0672308   -0.1499943    0.0155327
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1264755   -0.1948164   -0.0581347
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0963622   -0.1672634   -0.0254610
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1437720   -0.2144265   -0.0731176
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0528403   -0.1202745    0.0145938
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.1058685   -0.1748340   -0.0369030
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1041479   -0.1723903   -0.0359056
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0590939   -0.1331620    0.0149742
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0203402   -0.0356123    0.0762927
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0090231   -0.0488985    0.0308524
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0379358   -0.0739076   -0.0019640
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0339818   -0.0775628    0.0095992
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0811772   -0.1041465   -0.0582079
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0372707   -0.0588529   -0.0156884
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0545988   -0.0770161   -0.0321815
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0763373   -0.0969748   -0.0556999
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0630376   -0.0946172   -0.0314581
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0520062   -0.0825145   -0.0214978
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0637777   -0.0986056   -0.0289497
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0321292   -0.0656948    0.0014365
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0595852   -0.0902208   -0.0289497
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0202618   -0.0631741    0.0226506
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0452418   -0.0814068   -0.0090768
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0545200   -0.0829267   -0.0261133
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0000948   -0.0376649    0.0378545
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0481491   -0.0942837   -0.0020145
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0117411   -0.0538718    0.0303896
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0355921   -0.0788638    0.0076797
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1085902   -0.1285103   -0.0886701
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1049165   -0.1308707   -0.0789623
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1389514   -0.1666809   -0.1112219
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1357250   -0.1603657   -0.1110843
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0313519    0.0015028    0.0612011
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.0200136   -0.0194278    0.0594551
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                 0.0224143   -0.0054806    0.0503092
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.0355078    0.0049158    0.0660997
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0171125   -0.0344263    0.0002014
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0358361   -0.0514899   -0.0201822
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0422774   -0.0616124   -0.0229424
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0201607   -0.0394462   -0.0008751
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.1020692   -0.1332346   -0.0709038
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0740190   -0.1100244   -0.0380135
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0973855   -0.1280190   -0.0667520
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0726339   -0.1062582   -0.0390096
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0451353   -0.0186725    0.1089430
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.0172973   -0.0664844    0.0318898
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.0095046   -0.0623115    0.0813207
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0180013   -0.0442724    0.0802750
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1056445   -0.1343458   -0.0769433
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.1010182   -0.1384235   -0.0636130
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0831297   -0.1136518   -0.0526075
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0702010   -0.1007095   -0.0396926
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0718589   -0.1081758   -0.0355421
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0730513   -0.1083220   -0.0377806
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0375864   -0.0737416   -0.0014312
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0718153   -0.0997487   -0.0438820
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0508104   -0.0934989   -0.0081218
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0510736   -0.0909298   -0.0112175
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0397212   -0.0806010    0.0011586
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0316725   -0.0820932    0.0187482
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0833874   -0.1414666   -0.0253082
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0566176   -0.1162620    0.0030269
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0830834   -0.1402463   -0.0259205
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.1007478   -0.1476023   -0.0538933
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1559538   -0.2391076   -0.0728000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1438953   -0.2072243   -0.0805662
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1550436   -0.2211706   -0.0889166
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1198080   -0.1795819   -0.0600340
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1281643   -0.1851760   -0.0711526
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.1415944   -0.1920062   -0.0911825
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1109927   -0.1588096   -0.0631759
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1009250   -0.1795470   -0.0223031
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0461137   -0.0785319   -0.0136955
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0129228   -0.0482114    0.0223658
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0198586   -0.0556985    0.0159814
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0646319   -0.0952353   -0.0340285
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0768100   -0.0979158   -0.0557041
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0554504   -0.0771555   -0.0337453
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0575142   -0.0803556   -0.0346728
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0667247   -0.0902979   -0.0431515
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0421545   -0.0698320   -0.0144769
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0732098   -0.1009656   -0.0454540
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0524548   -0.0823818   -0.0225277
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0976656   -0.1275474   -0.0677838
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0634115   -0.0850047   -0.0418183
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0944621   -0.1313344   -0.0575899
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0769435   -0.1063302   -0.0475567
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0900244   -0.1123224   -0.0677265
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0034272   -0.0395472    0.0326928
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0270079   -0.0606852    0.0066695
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0181235   -0.0496202    0.0133731
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0384126   -0.0717433   -0.0050819
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0893446   -0.1063985   -0.0722907
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0929465   -0.1166710   -0.0692220
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0804431   -0.1031104   -0.0577758
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1046322   -0.1260700   -0.0831944
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0402511   -0.0773965   -0.0031056
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0842097   -0.1300202   -0.0383993
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0406886   -0.0780117   -0.0033655
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0262765   -0.0658980    0.0133450
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0498499   -0.0667797   -0.0329200
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0494094   -0.0625067   -0.0363120
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0541061   -0.0701397   -0.0380725
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0555960   -0.0689272   -0.0422647
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0450502   -0.0723322   -0.0177683
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0725138   -0.1131733   -0.0318543
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0661636   -0.0939331   -0.0383941
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0504379   -0.0836563   -0.0172196
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0101388   -0.0322015    0.0524791
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.0216185   -0.0690742    0.0258372
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.0181580   -0.0766431    0.0403270
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0135931   -0.0203599    0.0475462
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0374029   -0.0647242   -0.0100815
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0511499   -0.0865879   -0.0157120
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0555555   -0.0824345   -0.0286766
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0653417   -0.0987722   -0.0319112
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0013402   -0.0292646    0.0265843
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0966058   -0.1311704   -0.0620412
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0802436   -0.1099871   -0.0505002
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0597490   -0.0888593   -0.0306388
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0631445   -0.1056394   -0.0206497
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0478026   -0.0803554   -0.0152499
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0856510   -0.1212517   -0.0500503
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0676810   -0.0983609   -0.0370010
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0515409   -0.0941987   -0.0088831
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0760045   -0.1175352   -0.0344738
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0394098   -0.0862326    0.0074130
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0722750   -0.1249672   -0.0195829
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0853969   -0.1340136   -0.0367803
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0954032   -0.1491180   -0.0416885
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0340342   -0.0834817    0.0154133
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0696205   -0.1198848   -0.0193562
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0577538   -0.1081445   -0.0073631
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0789050   -0.1393827   -0.0184274
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0445446   -0.0988073    0.0097180
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1023496   -0.1670915   -0.0376077
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0395419   -0.0844535    0.0053696
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0413177   -0.0705581   -0.0120773
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0312665   -0.0600006   -0.0025323
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0617748   -0.0936709   -0.0298788
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0615308   -0.0812044   -0.0418572
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0415316   -0.0626160   -0.0204471
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0271764   -0.0481423   -0.0062105
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0393593   -0.0577142   -0.0210044
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0532008   -0.0820578   -0.0243438
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0665339   -0.0945619   -0.0385059
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0679215   -0.1022185   -0.0336245
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0698835   -0.0967204   -0.0430466
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0701788   -0.0879838   -0.0523738
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0806282   -0.1004476   -0.0608088
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0705685   -0.0901398   -0.0509971
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0427585   -0.0740545   -0.0114624
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0820933   -0.1164977   -0.0476890
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0671560   -0.0939819   -0.0403300
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0692803   -0.1059678   -0.0325928
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0435759   -0.0809156   -0.0062362
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0859877   -0.1046647   -0.0673106
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0764126   -0.0990919   -0.0537332
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0962571   -0.1177428   -0.0747713
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0876626   -0.1093663   -0.0659588
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0700302   -0.1633562    0.0232958
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.0384952   -0.0373447    0.1143351
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0316775   -0.0893885    0.0260335
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0782071   -0.1196188   -0.0367954
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0407671   -0.0530320   -0.0285022
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0499243   -0.0611133   -0.0387352
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0381892   -0.0508378   -0.0255405
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0524635   -0.0646224   -0.0403045
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0522585   -0.0808463   -0.0236706
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0533519   -0.0913273   -0.0153764
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0489839   -0.0703707   -0.0275970
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0308309   -0.0554172   -0.0062447
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0120665   -0.0546485    0.0305154
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.0212062   -0.0621495    0.0197371
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.0236924   -0.0761027    0.0287180
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                -0.0199520   -0.0574489    0.0175449
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0445360   -0.0699719   -0.0191002
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0273460   -0.0582266    0.0035346
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0307492   -0.0528961   -0.0086023
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0453000   -0.0706546   -0.0199454
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0393642   -0.0666642   -0.0120643
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0575913   -0.0927782   -0.0224044
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0528951   -0.0843647   -0.0214255
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0680460   -0.0992960   -0.0367961
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0246281   -0.0573386    0.0080824
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0436690   -0.0733261   -0.0140119
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0539758   -0.0859418   -0.0220097
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0275069   -0.0564568    0.0014431
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0189976   -0.0545207    0.0165254
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.0141214   -0.0289831    0.0572259
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0365874   -0.0724322   -0.0007426
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0656834   -0.1017772   -0.0295895
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0361660   -0.0741226    0.0017905
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0945458   -0.1485377   -0.0405539
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1208918   -0.1685749   -0.0732087
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0939295   -0.1346082   -0.0532508
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0475922   -0.0933816   -0.0018029
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0686381   -0.1277139   -0.0095624
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1050506   -0.1441349   -0.0659663
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0542853   -0.1003974   -0.0081732
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0368382   -0.0673938   -0.0062825
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0324411   -0.0622113   -0.0026710
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0277753   -0.0603279    0.0047774
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0641687   -0.0909375   -0.0373999
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0321824   -0.0505071   -0.0138576
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0415822   -0.0585544   -0.0246100
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0371823   -0.0543493   -0.0200153
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0413943   -0.0600466   -0.0227419
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0375818   -0.0694375   -0.0057261
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0040913   -0.0238822    0.0320648
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0231642   -0.0580776    0.0117492
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0275864   -0.0588468    0.0036741
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0620816   -0.0795695   -0.0445936
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0710969   -0.0953985   -0.0467952
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0684489   -0.0865025   -0.0503953
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0738142   -0.1140523   -0.0335761
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0063861   -0.0413478    0.0285756
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0106269   -0.0423626    0.0211087
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0245081   -0.0570273    0.0080111
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0154149   -0.0525314    0.0217015
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0458265   -0.0628180   -0.0288349
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0606606   -0.0863022   -0.0350191
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0639650   -0.0884963   -0.0394336
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0614884   -0.0872971   -0.0356797
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0395923   -0.0995341    0.0203495
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0576188   -0.0970577   -0.0181798
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0275569   -0.0895132    0.0343993
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0028565   -0.0485844    0.0428715
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0428193   -0.0549884   -0.0306501
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0294281   -0.0398004   -0.0190557
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0350867   -0.0474812   -0.0226922
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0263006   -0.0390706   -0.0135306
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0018317   -0.0203829    0.0167195
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0143530   -0.0505302    0.0218243
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0179770   -0.0384291    0.0024752
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0268049   -0.0526069   -0.0010028
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0240018   -0.0765528    0.0285492
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.0358959   -0.0839022    0.0121103
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.0062633   -0.0591170    0.0716436
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                -0.0384148   -0.0735190   -0.0033107
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0090909   -0.0142872    0.0324690
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0123191   -0.0405899    0.0159518
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                 0.0229334    0.0032273    0.0426395
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0030138   -0.0250146    0.0189869
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0535189   -0.0764513   -0.0305866
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.0012846   -0.0272931    0.0298623
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0260634   -0.0531249    0.0009981
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0319141   -0.0578848   -0.0059434
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0095408   -0.0376630    0.0185813
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0257768   -0.0600909    0.0085374
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0372017   -0.0622607   -0.0121427
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.0315127   -0.0000947    0.0631201
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0244341   -0.0724741    0.0236058
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0683867   -0.1057629   -0.0310104
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0214262   -0.0550244    0.0121720
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0202365   -0.0571677    0.0166946
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0469593   -0.0886095   -0.0053090
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0068741   -0.0424723    0.0562204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0192339   -0.0692584    0.0307907
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0304764   -0.0759925    0.0150396
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0365269   -0.0758761    0.0028222
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0992857   -0.1386435   -0.0599279
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0414932   -0.0892448    0.0062583
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0136113   -0.0665907    0.0393682
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0353249   -0.0634473   -0.0072026
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0578051   -0.0819801   -0.0336300
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0284707   -0.0547321   -0.0022093
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0333077   -0.0612566   -0.0053587
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0184912   -0.0358240   -0.0011584
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                 0.0088916   -0.0060943    0.0238774
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0143742   -0.0300942    0.0013458
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0227429   -0.0399858   -0.0054999
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0194932    0.0029957    0.0359906
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                 0.0206870   -0.0057178    0.0470918
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                 0.0154881   -0.0011334    0.0321095
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                 0.0050226   -0.0315552    0.0416005
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0008202   -0.0297769    0.0281364
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0245268   -0.0537249    0.0046714
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.0029935   -0.0300692    0.0360562
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                 0.0122495   -0.0199286    0.0444276
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0127482   -0.0275222    0.0020259
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0185289   -0.0408081    0.0037503
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0198698   -0.0430332    0.0032936
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0283167   -0.0527112   -0.0039223
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0042806   -0.0299868    0.0214256
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0132916   -0.0468385    0.0202552
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0244882   -0.0717965    0.0228200
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0177441   -0.0431105    0.0076223
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0230070    0.0021448    0.0438693
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                 0.0208105   -0.0206780    0.0622990
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                 0.0280497    0.0030005    0.0530988
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                 0.0298713    0.0086321    0.0511105
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0178809   -0.0085990    0.0443608
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.0334456   -0.0039896    0.0708808
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.0090153   -0.0318118    0.0498424
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0087372   -0.0189610    0.0364354
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0393094    0.0123602    0.0662587
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                 0.0249923    0.0032023    0.0467824
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                 0.0208052   -0.0035863    0.0451967
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                 0.0249135    0.0079075    0.0419196
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0001442   -0.0321401    0.0318516
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0162002   -0.0464158    0.0140154
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                 0.0127714   -0.0168288    0.0423716
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.0138965   -0.0071718    0.0349647
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0786130    0.0497387    0.1074872
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 0.0689909    0.0340398    0.1039420
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.0423127    0.0163030    0.0683224
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.0352296    0.0057351    0.0647241
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0542527    0.0211895    0.0873160
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.0256627   -0.0189519    0.0702773
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.0281882   -0.0027693    0.0591457
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.0718270    0.0436774    0.0999766
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0259721   -0.0109714    0.0629155
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0258535   -0.0413959    0.0931029
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0100805   -0.0586212    0.0384601
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0045908   -0.0318683    0.0410499
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0099552   -0.0274306    0.0473410
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                 0.0097776   -0.0440899    0.0636452
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                 0.0196186   -0.0206911    0.0599284
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                 0.0238939   -0.0268665    0.0746543
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0088147   -0.0369439    0.0193145
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0308615   -0.0537188   -0.0080043
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0272015   -0.0544573    0.0000543
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                 0.0022537   -0.0293613    0.0338688
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0363521    0.0163107    0.0563935
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                 0.0363674    0.0181042    0.0546307
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                 0.0420418    0.0261426    0.0579410
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                 0.0656712    0.0501462    0.0811963
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0435197    0.0167878    0.0702516
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                 0.0371053    0.0128298    0.0613808
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                 0.0484839    0.0217684    0.0751994
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                 0.0636522    0.0169617    0.1103428
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0362889   -0.0374565    0.1100343
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.0153226   -0.0346650    0.0653103
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.0622963    0.0060934    0.1184992
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0229405   -0.0598948    0.0140137
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0098843   -0.0238779    0.0041094
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0112592   -0.0298950    0.0073767
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0052934   -0.0119460    0.0225329
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0035294   -0.0195552    0.0124964
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0305687    0.0082858    0.0528517
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.0216786   -0.0210883    0.0644456
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                 0.0197842   -0.0102335    0.0498019
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.0279420   -0.0041968    0.0600807


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1446583    0.0870976    0.2022191
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0689235   -0.1155446   -0.0223023
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0544973    0.0099212    0.0990734
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2543887   -0.2877193   -0.2210580
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1882890   -0.2390479   -0.1375301
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1400701   -0.1794271   -0.1007131
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0010094   -0.1011210    0.1031397
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5355682   -0.5575602   -0.5135762
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0588712    0.0539503    0.0637922
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2749035   -0.3031728   -0.2466342
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0016619   -0.0396107    0.0362870
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856607   -0.1022688   -0.0690525
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0976717   -0.1124091   -0.0829344
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034346   -0.0083001    0.0014310
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0088470   -0.0225757    0.0048816
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0516546   -0.0677408   -0.0355685
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                -0.0242292   -0.0452610   -0.0031973
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1202982   -0.1323063   -0.1082902
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0279334    0.0120046    0.0438622
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0289856   -0.0379823   -0.0199890
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659765   -0.0802683   -0.0516847
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0224698   -0.0391090   -0.0058306
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0910818   -0.1013201   -0.0808435
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0433141   -0.0626948   -0.0239333
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0521361   -0.0596399   -0.0446324
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0644098   -0.0788912   -0.0499283
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0734290   -0.0899048   -0.0569533
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0868247   -0.0971751   -0.0764742
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0403575   -0.0774359   -0.0032790
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0451119   -0.0511864   -0.0390374
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0193878   -0.0347002   -0.0040754
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0091366   -0.0260209    0.0077477
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0555559   -0.0666347   -0.0444771
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0464023   -0.0722064   -0.0205982
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0328956   -0.0389474   -0.0268439
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0059547   -0.0211395    0.0092302
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0186971   -0.0286605   -0.0087338
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0147327   -0.0309734    0.0015080
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.0213805   -0.0073799    0.0501409
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0053218   -0.0133012    0.0026576
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0258428    0.0105053    0.0411803


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0297821   -0.0665048    0.1260691
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0347108   -0.1210088    0.0515872
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0341442   -0.1209043    0.0526158
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0958231   -0.0540920    0.2457381
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0918640   -0.0624793    0.2462073
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0248889   -0.1893188    0.1395409
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.1195395   -0.0132218    0.2523007
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0651938   -0.0668194    0.1972070
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0784458   -0.0454237    0.2023154
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0848859   -0.0403790    0.2101508
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0423380   -0.0968102    0.1814863
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0039395   -0.1287357    0.1366146
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0009668   -0.0945455    0.0964790
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0494798   -0.1373453    0.0383856
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0149108   -0.0775017    0.1073233
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1044685   -0.2526091    0.0436720
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0318924   -0.1164847    0.1802694
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0746035   -0.2137412    0.0645343
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0341946   -0.1311671    0.0627780
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0088932   -0.0954680    0.1132545
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0928570   -0.2044734    0.0187594
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1921177   -0.1039280    0.4881635
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.1910698   -0.1352154    0.5173550
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.2864092    0.0278383    0.5449801
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1323149   -0.2664390    0.0018092
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0823226   -0.2176708    0.0530255
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0209030   -0.1183033    0.1601092
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0631859    0.0160078    0.1103640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0311384   -0.0153698    0.0776465
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0019224   -0.0537108    0.0498659
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0354512   -0.0346321    0.1055346
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0385292   -0.0300921    0.1071505
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0216712   -0.0492756    0.0926179
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2295790   -0.4987288    0.0395709
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.3427197   -0.5027974   -0.1826420
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2629860   -0.4901217   -0.0358503
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0131701   -0.0707850    0.0444448
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0023968   -0.0613530    0.0661467
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0222031   -0.0345363    0.0789425
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0464342   -0.0584129   -0.0344554
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0261612   -0.0375668   -0.0147556
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0150641   -0.0258745   -0.0042538
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0021044   -0.0679647    0.0721735
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0176470   -0.0526713    0.0879652
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0234702   -0.0589129    0.1058533
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0055818   -0.0610505    0.0722140
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0083646   -0.0615805    0.0783097
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0248606   -0.0920290    0.0423079
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0750299   -0.1764939    0.0264341
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0540929   -0.1560766    0.0478907
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0309178   -0.1365384    0.0747028
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0071353   -0.0958374    0.0815668
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0195849   -0.0612777    0.1004475
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0061979   -0.0733633    0.0857590
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0182244   -0.0923086    0.0558598
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0370897   -0.1109052    0.0367258
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0936600   -0.1719729   -0.0153470
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0403499   -0.0520359    0.1327358
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0263374   -0.0633924    0.1160672
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0210957   -0.1043848    0.0621934
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0183808   -0.1315153    0.0947536
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1467740   -0.2487857   -0.0447622
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0365024   -0.1439115    0.0709066
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0472314   -0.0361246    0.1305875
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0212204   -0.0674757    0.1099165
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0568132   -0.0242217    0.1378481
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1039995   -0.0296305    0.2376294
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0386126   -0.1762255    0.0990003
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0384310   -0.1779960    0.1011340
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0012490   -0.0909574    0.0884594
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0242020   -0.1175022    0.0690983
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0253396   -0.0679323    0.1186114
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0199905   -0.0248979    0.0648789
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0297373   -0.0124375    0.0719121
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0151372   -0.0326318    0.0629062
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0502005    0.0054486    0.0949524
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0266408   -0.0255313    0.0788128
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0027456   -0.0430323    0.0485236
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0037570   -0.0497288    0.0572429
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0288342   -0.0814591    0.0237906
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0122700   -0.0414140    0.0659540
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0064831   -0.0614883    0.0744545
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0112354   -0.0538940    0.0763647
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0376380   -0.1061503    0.0308742
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0301152   -0.0704487    0.0102182
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0168288   -0.0605248    0.0268672
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0135104   -0.0236385    0.0506593
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0016460   -0.0153790    0.0120871
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0048115   -0.0176130    0.0079900
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0038342   -0.0166331    0.0089646
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0110604   -0.0488469    0.0267262
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0250207   -0.0606910    0.0106495
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0165652   -0.0550339    0.0219035
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0007016   -0.0487262    0.0473229
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0289919   -0.0721752    0.0141914
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0389686   -0.0864269    0.0084897
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0434176   -0.1379883    0.0511532
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0776244   -0.1757590    0.0205103
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0085122   -0.1161882    0.0991637
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0012436   -0.0720181    0.0695308
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0102380   -0.0670838    0.0466077
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0038062   -0.0671247    0.0595124
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0659293    0.0072605    0.1245982
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0094843   -0.0440181    0.0629866
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0107944   -0.0600259    0.0384370
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0221248   -0.0408265    0.0850760
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0402097   -0.0315130    0.1119324
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0148461   -0.0593665    0.0890587
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0911799   -0.1708854   -0.0114744
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0416543   -0.1156628    0.0323541
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0750891   -0.1576766    0.0074983
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0592447   -0.1674646    0.0489751
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0291314   -0.1396244    0.0813616
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0765412   -0.1879688    0.0348864
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0530282   -0.1496249    0.0435685
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0513076   -0.1473298    0.0447146
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0062536   -0.1068482    0.0943411
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0293633   -0.0981659    0.0394393
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0582760   -0.1251475    0.0085956
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0543220   -0.1256635    0.0170195
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0439066    0.0123792    0.0754339
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0265785   -0.0055204    0.0586774
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0048399   -0.0260461    0.0357259
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0110315   -0.0330611    0.0551240
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0007400   -0.0479144    0.0464344
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0309085   -0.0152974    0.0771144
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0393235   -0.0133420    0.0919889
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0143434   -0.0331658    0.0618527
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0050652   -0.0368546    0.0469850
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0482439   -0.1078922    0.0114044
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0118359   -0.0684510    0.0447793
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0356868   -0.0931632    0.0217895
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0036737   -0.0290868    0.0364342
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0303612   -0.0644565    0.0037342
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0271348   -0.0588691    0.0045995
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0113383   -0.0609029    0.0382263
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0089377   -0.0497170    0.0318417
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0041558   -0.0385084    0.0468201
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0187236   -0.0416459    0.0041987
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0251649   -0.0512449    0.0009150
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0030482   -0.0285359    0.0224395
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0280502   -0.0196009    0.0757013
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0046837   -0.0391027    0.0484701
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0294353   -0.0164979    0.0753685
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0624326   -0.1431981    0.0183329
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0356307   -0.1320869    0.0608255
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0271340   -0.1164703    0.0622023
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0046263   -0.0424972    0.0517498
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0225148   -0.0196155    0.0646452
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0354435   -0.0062213    0.0771083
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0011924   -0.0518902    0.0495054
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0342725   -0.0169397    0.0854847
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0000436   -0.0458345    0.0459217
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0002633   -0.0588434    0.0583169
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0110892   -0.0480433    0.0702216
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0191379   -0.0469449    0.0852206
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0267699   -0.0566489    0.1101886
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0003040   -0.0816857    0.0822937
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0173603   -0.0921824    0.0574617
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0120585   -0.0932538    0.1173708
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0009101   -0.1060426    0.1078629
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0361458   -0.0664920    0.1387836
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0134300   -0.0897523    0.0628923
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0171716   -0.0570009    0.0913440
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0272393   -0.0698831    0.1243617
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0331909   -0.0147302    0.0811120
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0262551   -0.0220767    0.0745870
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0185182   -0.0630512    0.0260149
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0213596   -0.0089798    0.0516990
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0192958   -0.0118435    0.0504350
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0100852   -0.0215623    0.0417328
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0310554   -0.0702645    0.0081538
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0103003   -0.0511410    0.0305403
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0555111   -0.0962066   -0.0148156
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0310507   -0.0739404    0.0118391
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0135320   -0.0502694    0.0232054
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0266130   -0.0580184    0.0047925
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0235807   -0.0729951    0.0258337
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0146964   -0.0626543    0.0332616
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0349854   -0.0841462    0.0141753
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0036019   -0.0327588    0.0255549
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0089015   -0.0195587    0.0373617
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0152876   -0.0426907    0.0121154
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0439587   -0.1032015    0.0152841
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0004375   -0.0533713    0.0524962
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0139745   -0.0407113    0.0686604
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0004405   -0.0208385    0.0217195
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0042562   -0.0277590    0.0192465
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0057461   -0.0274039    0.0159117
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0274636   -0.0765053    0.0215781
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0211134   -0.0601626    0.0179358
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0053877   -0.0484810    0.0377055
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0317573   -0.0955615    0.0320468
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0282969   -0.1007815    0.0441878
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0034543   -0.0507930    0.0577016
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0137471   -0.0585450    0.0310509
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0181527   -0.0565191    0.0202137
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0279388   -0.0714069    0.0155293
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0952656   -0.1397436   -0.0507877
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0789035   -0.1196890   -0.0381179
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0584089   -0.0987311   -0.0180866
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0153419   -0.0383704    0.0690542
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0225065   -0.0780766    0.0330636
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0045365   -0.0571111    0.0480382
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0244637   -0.0840706    0.0351433
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0121311   -0.0513431    0.0756053
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0207342   -0.0886598    0.0471915
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0100063   -0.0825093    0.0624967
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0513627   -0.0180021    0.1207275
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0157764   -0.0542122    0.0857651
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0211512   -0.1001105    0.0578081
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0132092   -0.0612727    0.0876910
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0445958   -0.1266908    0.0374992
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0017758   -0.0553655    0.0518139
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0082755   -0.0451388    0.0616897
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0222329   -0.0774176    0.0329518
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0199992   -0.0089323    0.0489307
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0343544    0.0056909    0.0630179
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0221715   -0.0047243    0.0490674
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0133331   -0.0534403    0.0267741
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0147207   -0.0596807    0.0302393
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0166827   -0.0560872    0.0227217
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0104494   -0.0371084    0.0162096
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0003897   -0.0269919    0.0262126
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0274203   -0.0085799    0.0634205
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0149373   -0.0288532    0.0587279
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0128130   -0.0373472    0.0629733
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0385174   -0.0123169    0.0893517
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0095751   -0.0199546    0.0391047
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0102694   -0.0388323    0.0182934
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0016749   -0.0304410    0.0270911
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.1085254   -0.0124780    0.2295288
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0383527   -0.0703997    0.1471050
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0081769   -0.1112906    0.0949367
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0091571   -0.0256411    0.0073268
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0025779   -0.0151548    0.0203107
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0116964   -0.0290677    0.0056750
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0010934   -0.0486776    0.0464908
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0032746   -0.0325652    0.0391143
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0214275   -0.0163138    0.0591688
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0091397   -0.0682481    0.0499688
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0116258   -0.0793058    0.0560542
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0078855   -0.0647873    0.0490163
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0171901   -0.0228299    0.0572100
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0137869   -0.0199943    0.0475680
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0007640   -0.0367099    0.0351819
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0182271   -0.0629030    0.0264488
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0135309   -0.0552283    0.0281666
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0286818   -0.0704772    0.0131136
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0190409   -0.0632339    0.0251521
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0293477   -0.0751563    0.0164610
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0028788   -0.0466620    0.0409044
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0331190   -0.0228028    0.0890409
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0175898   -0.0680146    0.0328350
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0466857   -0.0974458    0.0040743
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0583798   -0.1244531    0.0076936
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0847257   -0.1457758   -0.0236757
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0577635   -0.1134529   -0.0020741
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0210459   -0.0958756    0.0537837
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0574584   -0.1177223    0.0028055
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0066931   -0.0718205    0.0584343
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0043970   -0.0384326    0.0472267
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0090629   -0.0359595    0.0540853
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0273305   -0.0684118    0.0137508
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0093999   -0.0345106    0.0157108
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0050000   -0.0301394    0.0201394
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0092119   -0.0354831    0.0170593
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0416731   -0.0006909    0.0840371
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0144176   -0.0328490    0.0616842
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0099955   -0.0348230    0.0548140
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0090153   -0.0389999    0.0209693
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0063673   -0.0315401    0.0188054
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0117326   -0.0555311    0.0320658
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0042408   -0.0511369    0.0426553
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0181219   -0.0651267    0.0288828
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0090288   -0.0599529    0.0418953
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0148342   -0.0456129    0.0159445
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0181385   -0.0480671    0.0117901
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0156619   -0.0466173    0.0152934
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0180265   -0.0903367    0.0542838
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0120354   -0.0740724    0.0981432
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0367358   -0.0388329    0.1123046
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0133912   -0.0023729    0.0291553
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0077326   -0.0093119    0.0247772
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0165187   -0.0010713    0.0341086
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0125213   -0.0532879    0.0282454
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0161453   -0.0437008    0.0114102
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0249732   -0.0568322    0.0068858
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0118941   -0.0835782    0.0597900
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0302651   -0.0544678    0.1149979
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0144130   -0.0788409    0.0500148
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0214100   -0.0581165    0.0152966
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0138425   -0.0168272    0.0445122
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0121047   -0.0443952    0.0201857
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0548035    0.0181516    0.0914554
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0274555   -0.0078851    0.0627962
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0216049   -0.0130286    0.0562383
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0162359   -0.0606667    0.0281948
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0276609   -0.0653374    0.0100156
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0410535   -0.0012650    0.0833720
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0439525   -0.1050331    0.0171280
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0030080   -0.0556689    0.0616848
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0041976   -0.0566390    0.0650343
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0538333   -0.0109160    0.1185826
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0277254   -0.0372405    0.0926914
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0164828   -0.0454761    0.0784417
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0627588   -0.1183530   -0.0071645
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0049663   -0.0667672    0.0568347
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0229157   -0.0432503    0.0890817
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0224801   -0.0596520    0.0146917
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0068542   -0.0316447    0.0453531
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0020172   -0.0376474    0.0416819
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0273827    0.0044786    0.0502868
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0041170   -0.0192362    0.0274702
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0042517   -0.0287011    0.0201977
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0011938   -0.0300172    0.0324049
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0040051   -0.0276722    0.0196620
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0144705   -0.0548154    0.0258743
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0237065   -0.0649488    0.0175357
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0038137   -0.0402094    0.0478368
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0130697   -0.0302711    0.0564105
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0057808   -0.0325754    0.0210139
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0071216   -0.0346249    0.0203817
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0155686   -0.0442777    0.0131405
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0090111   -0.0511477    0.0331256
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0202077   -0.0743267    0.0339114
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0134635   -0.0497439    0.0228168
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0021966   -0.0485555    0.0441624
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0050426   -0.0276379    0.0377231
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0068642   -0.0228603    0.0365888
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0155646   -0.0303837    0.0615130
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0088656   -0.0575808    0.0398496
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0091437   -0.0476161    0.0293287
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0143171   -0.0492177    0.0205836
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0185042   -0.0552260    0.0182176
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0143959   -0.0464747    0.0176830
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0160560   -0.0596414    0.0275294
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0129156   -0.0308689    0.0567000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0140407   -0.0239665    0.0520479
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0096221   -0.0548710    0.0356268
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0363002   -0.0751625    0.0025620
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0433834   -0.0847329   -0.0020339
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0285900   -0.0843141    0.0271340
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0260645   -0.0717280    0.0195990
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0175743   -0.0259066    0.0610551
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0001185   -0.0765751    0.0763380
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0360526   -0.0970926    0.0249874
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0213812   -0.0727420    0.0299796
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0001776   -0.0667835    0.0664283
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0096634   -0.0470511    0.0663779
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0139387   -0.0496768    0.0775542
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0220468   -0.0581770    0.0140834
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0183868   -0.0576630    0.0208894
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0110684   -0.0311965    0.0533333
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0000153   -0.0270868    0.0271174
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0056897   -0.0198945    0.0312740
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0293191    0.0039070    0.0547312
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0064144   -0.0425293    0.0297005
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0049642   -0.0328544    0.0427828
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0201325   -0.0338608    0.0741259
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0209663   -0.1100569    0.0681244
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0260074   -0.0667134    0.1187282
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0592294   -0.1417158    0.0232569
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0013749   -0.0246971    0.0219473
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0151777   -0.0069710    0.0373264
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0063549   -0.0149694    0.0276791
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0088901   -0.0571355    0.0393552
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0107846   -0.0481536    0.0265845
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0026268   -0.0417461    0.0364926


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0102542   -0.0607744    0.0402661
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0354303   -0.0484128    0.1192733
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0686692   -0.0109841    0.1483224
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0313139   -0.0554309    0.1180587
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0094534   -0.0659118    0.0470049
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0449944   -0.1380780    0.0480892
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0280484   -0.0916063    0.0355095
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1646543    0.0162836    0.3130249
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0509001   -0.1381017    0.0363015
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0243063   -0.0058862    0.0544987
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0223454   -0.0194827    0.0641735
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.2106889   -0.3360342   -0.0853436
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0040681   -0.0256385    0.0337748
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0220318   -0.0291741   -0.0148895
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0118571   -0.0345705    0.0582848
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0037328   -0.0372957    0.0447612
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0286979   -0.0887186    0.0313228
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0101052   -0.0387770    0.0589873
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0375989   -0.0842812    0.0090834
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0100955   -0.0445456    0.0647367
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0506502   -0.1172681    0.0159677
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0306331   -0.0145432    0.0758093
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0132754   -0.0701276    0.0966785
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0090917   -0.0699767    0.0517932
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0175261   -0.0114449    0.0464972
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0208014   -0.0081310    0.0497338
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0038197   -0.0368009    0.0291616
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0049133   -0.0483599    0.0385332
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0059923   -0.0247186    0.0127340
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0016535   -0.0095077    0.0062006
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0133007   -0.0364367    0.0098353
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0183127   -0.0446519    0.0080266
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0360161   -0.0972185    0.0251864
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0021696   -0.0337881    0.0381272
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0148156   -0.0171258    0.0467570
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0188591   -0.0214867    0.0592049
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0528424   -0.1007740   -0.0049108
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0261790   -0.0935488    0.0411907
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0291253   -0.0884811    0.0302306
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0366079   -0.0828305    0.0096147
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0197508   -0.0008691    0.0403708
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0113830   -0.0166402    0.0394062
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0156921   -0.0126146    0.0439988
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0243239   -0.0589313    0.0102835
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0117080   -0.0274813    0.0040653
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0034186   -0.0291886    0.0223514
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0118732   -0.0268078    0.0030615
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0148638   -0.0118140    0.0415417
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0369569   -0.0905681    0.0166544
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0144046   -0.0110374    0.0398466
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0095625   -0.0212129    0.0403379
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0088843   -0.0273310    0.0450996
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0014747   -0.0501579    0.0472086
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0009877   -0.0655213    0.0674966
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0093487   -0.0408309    0.0595283
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0099824   -0.0185803    0.0385451
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0137630   -0.0057775    0.0333035
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0238221   -0.0484944    0.0008503
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0164124   -0.0371654    0.0043405
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0190426   -0.0498393    0.0117541
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0017372   -0.0151989    0.0117245
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0030630   -0.0344096    0.0282836
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0022863   -0.0166134    0.0120409
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0106621   -0.0347754    0.0134512
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0131818   -0.0498371    0.0234735
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0191195   -0.0438549    0.0056159
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0561148   -0.0813161   -0.0309135
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0022087   -0.0356829    0.0312656
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0076350   -0.0446092    0.0293392
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0160406   -0.0256421    0.0577233
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0134798   -0.0590611    0.0321016
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0059100   -0.0424972    0.0306773
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0206201    0.0024276    0.0388126
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0112090   -0.0368009    0.0143829
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0034539   -0.0129814    0.0198892
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0086643   -0.0216099    0.0389384
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0008370   -0.0148942    0.0132202
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0296727   -0.0412196    0.1005650
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0043448   -0.0150815    0.0063919
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0064642   -0.0168867    0.0298150
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0082757   -0.0427899    0.0262386
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0065326   -0.0153774    0.0284426
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0155703   -0.0403839    0.0092433
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0114284   -0.0372421    0.0143853
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0095500   -0.0404458    0.0213458
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0494682   -0.0832482   -0.0156882
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0204949   -0.0604297    0.0194400
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0016785   -0.0286361    0.0252792
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0054614   -0.0221494    0.0112266
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0181940   -0.0100152    0.0464032
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0068760   -0.0241723    0.0104203
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0027505   -0.0329930    0.0274921
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0097294   -0.0238115    0.0043526
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0068100   -0.0555258    0.0419058
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0099236   -0.0006178    0.0204650
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0136902   -0.0304270    0.0030467
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0036429   -0.0382760    0.0455617
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0033169   -0.0233747    0.0167409
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0254137    0.0046322    0.0461951
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0014267   -0.0215220    0.0243755
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0077323   -0.0470366    0.0315719
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0187560   -0.0171091    0.0546212
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0072388   -0.0425561    0.0280784
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0047567   -0.0291497    0.0196362
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0075513   -0.0078615    0.0229640
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0039005   -0.0205337    0.0127326
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0051344   -0.0311018    0.0208330
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0059490   -0.0186622    0.0067643
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0104521   -0.0335563    0.0126520
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0026112   -0.0155513    0.0207737
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0013939   -0.0239922    0.0212043
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0095208   -0.0316112    0.0125696
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0055990   -0.0208622    0.0320602
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0216386   -0.0446877    0.0014105
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0103806   -0.0393900    0.0186288
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0171323   -0.0500866    0.0158220
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0077459   -0.0274560    0.0429478
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0050934   -0.0295440    0.0193571
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0098821   -0.0080092    0.0277734
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0046072   -0.0195135    0.0287279
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0149084   -0.0844381    0.0546214
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0045625   -0.0062958    0.0154208
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0047260   -0.0255547    0.0161028
