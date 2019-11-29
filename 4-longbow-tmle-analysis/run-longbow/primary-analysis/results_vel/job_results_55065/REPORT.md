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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             58     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             60     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             53     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             53     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             57     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             57     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             57     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             68     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             68     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             70     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             64     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             65     254  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             62     254  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     254  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             64     254  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             58     233  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             59     233  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             57     233  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             59     233  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             85     331  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             82     331  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             86     331  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             78     331  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4             96     394  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            103     394  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2             96     394  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3             99     394  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            148     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            166     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            170     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            156     640  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            505    2014  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            614    2014  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            398    2014  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            497    2014  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            129     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            125     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            133     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            122     509  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4              7      29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1              7      29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2              7      29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3              8      29  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            272     774  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            153     774  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            155     774  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            194     774  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4939   20273  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           5061   20273  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5105   20273  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           5168   20273  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            575    2496  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            612    2496  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            630    2496  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            679    2496  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             56     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             58     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             59     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             52     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             52     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             57     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             55     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             58     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             58     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             67     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             67     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             69     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             64     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     241  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             55     241  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     241  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     241  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             60     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             58     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     239  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             82     322  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             79     322  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             85     322  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             76     322  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4             96     399  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            104     399  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2             99     399  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            100     399  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            133     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            157     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            164     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            147     601  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            410    1659  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            502    1659  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            332    1659  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            415    1659  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            119     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            117     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            121     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            112     469  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4             51     214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1             59     214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2             52     214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3             52     214  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            283     784  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            150     784  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            156     784  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            195     784  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           3707   12713  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2737   12713  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2959   12713  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           3310   12713  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            426    1817  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            445    1817  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            456    1817  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            490    1817  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             49     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             56     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             58     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             46     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             48     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             57     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             56     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             56     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             67     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             60     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             58     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             60     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             59     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             50     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             60     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             62     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             62     225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             48     225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             56     225  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             81     325  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             81     325  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             86     325  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             77     325  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            100     410  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            105     410  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            102     410  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            103     410  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            125     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            151     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            153     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            147     576  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            362    1488  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            442    1488  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            312    1488  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            372    1488  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            118     477  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            123     477  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            127     477  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            109     477  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4             52     214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1             59     214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2             52     214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3             51     214  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            299     801  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            156     801  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            166     801  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            180     801  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            152     556  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            129     556  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            132     556  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            143     556  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            774    3071  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            749    3071  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            768    3071  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            780    3071  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             49     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             57     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             58     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             43     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             47     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             58     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             53     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             65     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             53     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             58     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3             59     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             53     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             59     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             60     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             45     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             60     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     224  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             81     327  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             80     327  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             86     327  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             80     327  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4             99     403  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            102     403  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            100     403  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            102     403  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            124     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            151     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            149     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            145     569  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            259    1077  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            337    1077  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            236    1077  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            245    1077  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            115     454  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            112     454  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            124     454  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            103     454  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3             49     212  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            334     899  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            179     899  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            184     899  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            202     899  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            108     380  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1             93     380  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2             78     380  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            101     380  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            863    3516  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            872    3516  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            871    3516  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            910    3516  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             39     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             56     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             38     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             42     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             58     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             64     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             49     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             53     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             58     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             50     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             60     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             56     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             43     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     226  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             84     334  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             79     334  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             88     334  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             83     334  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4             96     392  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            100     392  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2             98     392  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3             98     392  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            113     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            141     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            146     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            137     537  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            188     786  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            238     786  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            175     786  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            185     786  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            118     452  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            107     452  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            122     452  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            105     452  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4             47     199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1             56     199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2             48     199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3             48     199  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            330     861  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            162     861  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            185     861  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            184     861  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             38     125  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             32     125  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             24     125  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             31     125  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            863    3549  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            878    3549  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            886    3549  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            922    3549  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             37     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             58     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             52     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             34     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             50     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             57     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             58     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             66     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             43     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             50     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             55     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             45     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             57     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             40     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     220  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             84     325  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             78     325  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             84     325  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             79     325  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4             93     383  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            102     383  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2             93     383  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3             95     383  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            112     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            140     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            148     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            133     533  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            154     662  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            207     662  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            141     662  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            160     662  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            125     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            116     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            127     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            109     477  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4             45     189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1             53     189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2             45     189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3             46     189  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            294     782  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            146     782  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            172     782  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            170     782  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             31     118  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             30     118  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             25     118  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             32     118  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            832    3508  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            875    3508  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            904    3508  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            897    3508  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             31     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             52     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             26     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             50     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             53     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             56     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             58     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             64     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             40     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             45     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             53     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             49     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             60     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             60     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             33     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             58     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57     208  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             83     310  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75     310  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             78     310  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             74     310  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4             91     380  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            102     380  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2             91     380  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3             96     380  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            119     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            143     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            144     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            136     542  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              3      11  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              5      11  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1      11  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              2      11  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            117     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            106     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            124     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            100     447  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4             44     183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1             50     183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2             44     183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3             45     183  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            287     782  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            151     782  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            165     782  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            179     782  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            135     452  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             94     452  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            115     452  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            108     452  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             29     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             23     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             38     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             57     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             54     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             55     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             62     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             40     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             34     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             53     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             63     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             48     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             61     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     206  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             82     311  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77     311  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             76     311  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             76     311  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4             93     389  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            103     389  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2             94     389  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3             99     389  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4             99     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            127     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            130     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            129     485  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4             93     343  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1             75     343  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2             97     343  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3             78     343  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4              5      38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1             14      38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2             10      38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3              9      38  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            317     857  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            168     857  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            180     857  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            192     857  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            112     382  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             79     382  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            100     382  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             91     382  y_rate_wtkg      


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
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/c10263f7-d03f-48b0-bf1f-141425cfaeeb/8f385466-9bf9-4607-941b-82b7a364a391/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c10263f7-d03f-48b0-bf1f-141425cfaeeb/8f385466-9bf9-4607-941b-82b7a364a391/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c10263f7-d03f-48b0-bf1f-141425cfaeeb/8f385466-9bf9-4607-941b-82b7a364a391/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.9105007    0.8607982   0.9602032
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.8706842    0.8201981   0.9211704
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.8482364    0.8110540   0.8854188
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.8792751    0.8305955   0.9279547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                1.0018233    0.9424949   1.0611516
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                1.0785774    1.0120278   1.1451271
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                1.1004314    1.0236997   1.1771630
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                1.1157914    1.0422048   1.1893780
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.7742462    0.7300389   0.8184535
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.7441319    0.6930898   0.7951739
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.7529778    0.7098098   0.7961458
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.7531668    0.7107010   0.7956326
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.9688914    0.9155353   1.0222475
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.9677681    0.9115087   1.0240275
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.9872049    0.9426171   1.0317928
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.9113837    0.8501580   0.9726093
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.9228687    0.8638664   0.9818710
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                1.0251332    0.9685885   1.0816779
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.9736714    0.9260691   1.0212737
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.9615390    0.9211864   1.0018916
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                1.0011984    0.9436427   1.0587541
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.9133771    0.8590024   0.9677519
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.9077224    0.8477628   0.9676819
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.9641912    0.9194963   1.0088861
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8989654    0.8397464   0.9581844
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8626410    0.8085373   0.9167447
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.8996145    0.8306866   0.9685423
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.8721870    0.8149653   0.9294087
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7806662    0.7346099   0.8267226
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7381262    0.6919905   0.7842620
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6967498    0.6482712   0.7452285
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7710492    0.7221322   0.8199663
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                0.7771627    0.7396705   0.8146548
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                0.7596878    0.7211098   0.7982659
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                0.7827217    0.7442045   0.8212389
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                0.7569371    0.7148693   0.7990049
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8698963    0.8381131   0.9016794
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.9167697    0.8880895   0.9454499
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.9226234    0.8940027   0.9512440
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.8904142    0.8602953   0.9205330
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.9083805    0.8880745   0.9286865
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.9306555    0.9116089   0.9497021
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9208540    0.9005320   0.9411760
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.9265963    0.9071252   0.9460674
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.8195877    0.7861848   0.8529907
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.8111099    0.7727949   0.8494249
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.8416534    0.8117379   0.8715690
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8356271    0.7998394   0.8714148
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.3252623    1.1599844   1.4905403
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                1.0508047    0.9537307   1.1478788
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.0416690    0.9325212   1.1508167
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                1.1255753    0.9716356   1.2795149
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7934422    0.7657841   0.8211004
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7789993    0.7397079   0.8182906
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8159835    0.7831977   0.8487694
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.8002570    0.7618442   0.8386697
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.8752613    0.8697532   0.8807695
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.8379348    0.8325907   0.8432788
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.8511907    0.8454025   0.8569788
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.8651460    0.8597313   0.8705606
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.7467134    0.7189624   0.7744644
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.7270293    0.7005232   0.7535354
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.7314283    0.7082991   0.7545575
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.7518456    0.7223090   0.7813821
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.4846283    0.4478814   0.5213752
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.4905618    0.4521538   0.5289698
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.4580304    0.4318082   0.4842525
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.4658911    0.4332744   0.4985078
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.5815069    0.5160185   0.6469953
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.5505853    0.4958157   0.6053548
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.6106462    0.5504617   0.6708308
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.5749143    0.5028598   0.6469688
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.4400838    0.4061686   0.4739991
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.4116347    0.3748390   0.4484303
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4526164    0.4206901   0.4845427
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4755481    0.4394324   0.5116638
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.5262167    0.4824516   0.5699817
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.5496660    0.5024071   0.5969249
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.5227899    0.4839793   0.5616005
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.4892794    0.4556752   0.5228837
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.5122532    0.4729075   0.5515989
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.4908406    0.4521208   0.5295604
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.4871558    0.4517266   0.5225849
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.5042885    0.4621700   0.5464071
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.5256717    0.4622140   0.5891294
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.4555253    0.4053474   0.5057031
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.4563395    0.4099914   0.5026876
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.4380363    0.3882786   0.4877940
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4412426    0.3892041   0.4932810
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4795568    0.4407676   0.5183461
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.4555830    0.4130456   0.4981205
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.4521660    0.3926576   0.5116744
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5139671    0.4700661   0.5578681
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.4584034    0.4205635   0.4962433
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.4639835    0.4309043   0.4970627
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4681923    0.4326732   0.5037113
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                0.4777335    0.4374113   0.5180557
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4809572    0.4483455   0.5135689
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4433537    0.4078258   0.4788815
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                0.4724566    0.4376167   0.5072964
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.4699234    0.4453726   0.4944742
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4945233    0.4728621   0.5161844
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.5116515    0.4758619   0.5474411
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.4779262    0.4580996   0.4977527
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4117932    0.3942997   0.4292867
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4285820    0.4129045   0.4442595
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.4209671    0.4013144   0.4406198
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.4161376    0.3983896   0.4338857
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5000865    0.4718431   0.5283298
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4990826    0.4718230   0.5263422
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4926328    0.4663713   0.5188943
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4987367    0.4689190   0.5285543
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.6167263    0.5714666   0.6619860
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.5552227    0.5093386   0.6011068
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.5972384    0.5539366   0.6405402
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.5905486    0.5513297   0.6297675
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4739185    0.4563873   0.4914496
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4639866    0.4386930   0.4892802
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4278595    0.4036335   0.4520854
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4595348    0.4359417   0.4831280
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4478007    0.4418162   0.4537851
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.4346211    0.4287724   0.4404698
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4331373    0.4278086   0.4384660
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4443413    0.4386322   0.4500505
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.4549470    0.4392169   0.4706771
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4214465    0.4048824   0.4380106
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4391099    0.4175846   0.4606352
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.4422653    0.4270033   0.4575273
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.2450168    0.2237993   0.2662344
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.2790293    0.2381398   0.3199188
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2244278    0.1945276   0.2543281
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.2299483    0.2002956   0.2596009
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.4067924    0.3569145   0.4566702
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.4009815    0.3474104   0.4545525
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.3749824    0.3189064   0.4310584
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.3884224    0.3369156   0.4399292
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.2200980    0.1888108   0.2513852
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.2357128    0.2001036   0.2713220
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.2284654    0.2049496   0.2519813
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.2287766    0.1995773   0.2579758
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.2811254    0.2451373   0.3171135
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.2595678    0.2363921   0.2827435
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.2902497    0.2610809   0.3194185
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.2519525    0.2222427   0.2816622
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.2560209    0.2244959   0.2875459
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.2516412    0.2214190   0.2818633
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.2603854    0.2279434   0.2928274
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.2719856    0.2378462   0.3061250
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2853781    0.2451216   0.3256345
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2551634    0.2001194   0.3102074
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.2501721    0.2130969   0.2872474
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.2501839    0.2110724   0.2892953
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2599892    0.1959236   0.3240549
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2316786    0.1846355   0.2787216
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2353413    0.2003502   0.2703325
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2404489    0.1968084   0.2840894
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2800438    0.2493535   0.3107342
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2515710    0.2134214   0.2897206
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2498569    0.2147186   0.2849951
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2528864    0.2262188   0.2795541
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2590549    0.2333009   0.2848088
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2678948    0.2402035   0.2955861
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2655879    0.2357594   0.2954164
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2563968    0.2282278   0.2845658
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2325077    0.2124976   0.2525178
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2725254    0.2514936   0.2935571
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2520655    0.2182136   0.2859174
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2356172    0.2155183   0.2557162
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2494824    0.2303923   0.2685724
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2596438    0.2425045   0.2767832
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2642948    0.2451469   0.2834427
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2514226    0.2347545   0.2680907
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1839219    0.1671138   0.2007300
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2006009    0.1659305   0.2352713
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1887088    0.1662829   0.2111348
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1749992    0.1530367   0.1969617
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.3401900    0.2988369   0.3815431
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2933776    0.2524550   0.3343001
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.3228803    0.2842950   0.3614655
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.3256822    0.2883179   0.3630465
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2299334    0.2136835   0.2461833
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.2134344    0.1930520   0.2338167
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2004522    0.1775450   0.2233594
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2051111    0.1845446   0.2256775
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.2691135    0.2463928   0.2918342
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.2982724    0.2711192   0.3254255
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3016582    0.2718822   0.3314342
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.2721073    0.2489422   0.2952724
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2516829    0.2391240   0.2642419
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2350671    0.2264732   0.2436609
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2368978    0.2260385   0.2477570
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2357261    0.2265504   0.2449018
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1639665    0.1363604   0.1915725
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1929305    0.1593968   0.2264642
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.1609656    0.1337962   0.1881350
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1782780    0.1505983   0.2059577
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.3141423    0.2544921   0.3737924
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.2456759    0.1823378   0.3090139
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.2606005    0.2060614   0.3151397
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.3171450    0.2390832   0.3952068
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1562420    0.1251881   0.1872960
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1909575    0.1573266   0.2245884
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1864997    0.1655280   0.2074714
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1759391    0.1493307   0.2025475
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.2219539    0.1960718   0.2478360
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1785564    0.1525926   0.2045203
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1893350    0.1647047   0.2139653
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1586528    0.1205383   0.1967673
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.2096743    0.1806733   0.2386753
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1900988    0.1634633   0.2167342
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1743170    0.1423086   0.2063255
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1764454    0.1405749   0.2123158
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2407860    0.1967494   0.2848227
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2164370    0.1620105   0.2708635
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.2089015    0.1662452   0.2515579
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.1959234    0.1518712   0.2399756
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1680511    0.1282776   0.2078245
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1803713    0.1396984   0.2210442
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1894944    0.1442656   0.2347231
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1252957    0.0815803   0.1690112
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2003523    0.1629158   0.2377887
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1875371    0.1552208   0.2198534
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2521031    0.2151453   0.2890610
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2073565    0.1726587   0.2420544
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2095198    0.1791028   0.2399367
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1916114    0.1626724   0.2205505
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2293229    0.1985695   0.2600763
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2253560    0.2008659   0.2498461
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1597013    0.1417443   0.1776583
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1925425    0.1736516   0.2114333
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1797785    0.1601224   0.1994345
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1768127    0.1596576   0.1939678
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2158865    0.1931779   0.2385951
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2197619    0.2021030   0.2374208
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1948222    0.1720469   0.2175976
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1828711    0.1641645   0.2015778
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1567629    0.1340366   0.1794893
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1196561    0.0888462   0.1504659
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1445679    0.1197687   0.1693672
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1591620    0.1323559   0.1859682
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.2571556    0.2142498   0.3000613
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2117632    0.1785990   0.2449273
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2334531    0.1977819   0.2691244
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1938490    0.1607862   0.2269118
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1609355    0.1454428   0.1764282
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1557242    0.1357972   0.1756512
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1403409    0.1207519   0.1599298
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1569155    0.1394518   0.1743793
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.2228028    0.1936593   0.2519463
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1876422    0.1526859   0.2225985
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1951335    0.1612963   0.2289707
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.2142329    0.1820653   0.2464006
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1546858    0.1450510   0.1643205
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1490589    0.1416448   0.1564730
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1577826    0.1493193   0.1662459
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1564877    0.1491905   0.1637848
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1431805    0.1141159   0.1722451
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1159924    0.0721953   0.1597894
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.1462857    0.1142558   0.1783155
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1326934    0.1047393   0.1606475
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.1927966    0.1472843   0.2383089
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.1965031    0.1354765   0.2575297
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.2164958    0.1654656   0.2675259
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.2372998    0.1905892   0.2840103
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1808360    0.1453497   0.2163223
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1789021    0.1409182   0.2168860
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1542895    0.1268055   0.1817735
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1809503    0.1505784   0.2113221
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1348120    0.1083118   0.1613122
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1726773    0.1346660   0.2106886
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1776248    0.1475405   0.2077091
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1355968    0.0930197   0.1781738
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.1480409    0.1159761   0.1801057
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1453639    0.1097174   0.1810105
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1316566    0.0963016   0.1670116
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1446291    0.1102413   0.1790169
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.1876465    0.1400564   0.2352367
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.1933102    0.1462167   0.2404037
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.2060695    0.1389967   0.2731423
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.1825471    0.1395013   0.2255929
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1609355    0.1201000   0.2017711
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1149355    0.0535803   0.1762907
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1580926    0.1169624   0.1992227
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2214634    0.1663447   0.2765822
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1491235    0.1184242   0.1798227
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1900069    0.1649870   0.2150268
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1344328    0.1100250   0.1588407
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1441164    0.1150594   0.1731734
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1972142    0.1727134   0.2217150
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1737192    0.1486370   0.1988014
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1777784    0.1492741   0.2062827
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1867800    0.1594560   0.2141041
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1761502    0.1496568   0.2026435
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1799887    0.1587229   0.2012545
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1912395    0.1675218   0.2149573
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1712078    0.1475403   0.1948753
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1677886    0.1432366   0.1923406
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1718617    0.1519671   0.1917564
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1836290    0.1581549   0.2091030
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1725789    0.1503163   0.1948415
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1682584    0.1380135   0.1985034
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1773280    0.1522271   0.2024289
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1681964    0.1444471   0.1919458
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1758880    0.1464249   0.2053511
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.1524729    0.1115339   0.1934119
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2081835    0.1672599   0.2491072
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.1737309    0.1409507   0.2065112
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1912017    0.1560988   0.2263047
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1512488    0.1360687   0.1664290
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1478033    0.1235350   0.1720715
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1649653    0.1466808   0.1832498
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1363224    0.1148982   0.1577465
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1253621    0.0667267   0.1839976
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1368511    0.0392873   0.2344150
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.2039579    0.1507032   0.2572125
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1820737    0.1406960   0.2234514
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1355745    0.1256118   0.1455373
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1312371    0.1242821   0.1381921
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1235681    0.1159109   0.1312254
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1312192    0.1237060   0.1387324
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1430690    0.1095162   0.1766218
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1317433    0.0926508   0.1708358
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.1408275    0.1138282   0.1678268
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1510602    0.1210233   0.1810972
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.1969396    0.1367806   0.2570985
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.2134762    0.1664442   0.2605082
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.1756547    0.1210604   0.2302490
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.1836760    0.1341017   0.2332503
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1462607    0.1141560   0.1783653
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1754430    0.1416915   0.2091946
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1771980    0.1466986   0.2076975
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1594362    0.1277875   0.1910849
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1735039    0.1482827   0.1987251
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1760569    0.1320269   0.2200868
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1895011    0.1589997   0.2200026
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1534529    0.1287103   0.1781955
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.1197357    0.0837693   0.1557020
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1679134    0.1175475   0.2182792
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1413915    0.1019476   0.1808355
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1758870    0.1448395   0.2069345
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2724566    0.2171958   0.3277173
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2128017    0.1569729   0.2686306
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.1966512    0.1312149   0.2620875
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.2016470    0.1542132   0.2490809
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1428569    0.0971212   0.1885926
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1632266    0.1180708   0.2083823
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1137102    0.0682505   0.1591698
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0958194    0.0497175   0.1419213
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1576784    0.1343430   0.1810137
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1443019    0.0982283   0.1903754
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1418764    0.1190399   0.1647129
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1632874    0.1410688   0.1855060
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1836845    0.1544588   0.2129102
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1399420    0.1111533   0.1687306
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1610674    0.1336223   0.1885125
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1596788    0.1338119   0.1855458
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1420689    0.1184864   0.1656514
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1741215    0.1496549   0.1985880
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1701564    0.1473013   0.1930114
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1401215    0.1163797   0.1638633
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1687249    0.1375813   0.1998686
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1771555    0.1525344   0.2017766
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1701785    0.1372809   0.2030760
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1656596    0.1370247   0.1942946
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2460165    0.2150533   0.2769797
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2227856    0.1947464   0.2508249
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2463679    0.2153115   0.2774242
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2202436    0.1865628   0.2539244
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.1801116    0.1476407   0.2125824
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.1505791    0.1076212   0.1935371
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.1701329    0.1305532   0.2097127
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1734024    0.1434796   0.2033252
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1457213    0.1280663   0.1633763
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1390488    0.1109070   0.1671905
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1299260    0.1069398   0.1529121
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1375219    0.1132899   0.1617539
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1874477    0.1249318   0.2499636
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1203465    0.0526339   0.1880592
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1778891    0.0905171   0.2652612
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1753598    0.1397764   0.2109431
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1590191    0.1496087   0.1684295
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1552990    0.1461231   0.1644749
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1641081    0.1538220   0.1743942
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1598010    0.1510302   0.1685718
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1574421    0.1245143   0.1903700
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1818052    0.1254287   0.2381817
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.1194284    0.0882226   0.1506342
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1304591    0.1018873   0.1590309
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.1927407    0.1497728   0.2357086
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.0738475    0.0229736   0.1247214
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.1764700    0.1209731   0.2319669
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.1402964    0.0906617   0.1899312
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1844619    0.1546199   0.2143039
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1644620    0.1312749   0.1976491
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1738653    0.1461712   0.2015594
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1791080    0.1475135   0.2107026
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1828874    0.1557057   0.2100690
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1139975    0.0798642   0.1481308
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1184426    0.0719753   0.1649099
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1771096    0.1448855   0.2093338
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.1767432    0.1422382   0.2112483
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1499111    0.1054821   0.1943401
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1551628    0.1131747   0.1971509
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1566073    0.1188102   0.1944044
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.1769484    0.1334159   0.2204810
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.1583419    0.0978746   0.2188092
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.1572553    0.1039795   0.2105312
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.2122952    0.1549115   0.2696788
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1788050    0.1295926   0.2280174
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1652995    0.1027655   0.2278336
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1220906    0.0788444   0.1653369
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1281266    0.0777445   0.1785087
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1284757    0.0983273   0.1586241
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1361968    0.0954168   0.1769769
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1471198    0.1223563   0.1718833
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1289145    0.1006750   0.1571540
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1761886    0.1431419   0.2092354
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1605771    0.1340983   0.1870559
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1556115    0.1339805   0.1772425
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1449690    0.1190708   0.1708672
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1025161    0.0816435   0.1233888
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1448641    0.1212221   0.1685062
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1240675    0.0987728   0.1493622
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1536186    0.1307150   0.1765222
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1407427    0.1112192   0.1702662
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1640552    0.1300134   0.1980969
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1281106    0.0953546   0.1608666
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1402913    0.1118018   0.1687807
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.1636855    0.1208920   0.2064789
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.1903233    0.1611643   0.2194823
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2042720    0.1602979   0.2482461
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.2094737    0.1707801   0.2481673
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1606584    0.1442095   0.1771072
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1679382    0.1443559   0.1915204
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1632585    0.1382486   0.1882683
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1632602    0.1379968   0.1885236
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1875853    0.1507303   0.2244402
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1749826    0.1254952   0.2244700
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.2006300    0.1621132   0.2391468
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1542765    0.1149902   0.1935628
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1401269    0.1094711   0.1707827
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1667215    0.1255490   0.2078940
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.1614247    0.1322238   0.1906257
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1475833    0.1200494   0.1751172
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.1717301    0.1270187   0.2164415
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.1068371    0.0433904   0.1702838
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.1637862    0.1122553   0.2153172
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.1025060    0.0673750   0.1376369
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1609375    0.1332598   0.1886152
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1570984    0.1293015   0.1848953
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1671354    0.1420823   0.1921884
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1547486    0.1280247   0.1814725
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1781266    0.1343981   0.2218551
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1434933    0.1018190   0.1851676
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1638530    0.1189560   0.2087499
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1887093    0.1601475   0.2172711
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.1721081    0.1406478   0.2035684
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.2048682    0.1624348   0.2473016
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1343445    0.0910290   0.1776599
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1857626    0.1398146   0.2317107
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.1938508    0.1465726   0.2411291
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2482171    0.1864522   0.3099821
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.1702444    0.1271466   0.2133423
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.1558115    0.1115463   0.2000766
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1481838    0.0937562   0.2026114
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1428019    0.0536604   0.2319434
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1661098    0.1230477   0.2091718
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1125256    0.0548606   0.1701905
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1584882    0.1276684   0.1893080
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1449195    0.1177909   0.1720481
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1482194    0.1185307   0.1779081
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1470957    0.1208609   0.1733306
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1861306    0.1572284   0.2150329
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1606190    0.1332459   0.1879920
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1631408    0.1358185   0.1904632
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1993441    0.1704072   0.2282809
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1463371    0.1235480   0.1691261
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1410312    0.1187904   0.1632719
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1445596    0.1194291   0.1696902
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1374755    0.1146781   0.1602728
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1816732    0.1321137   0.2312328
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1614069    0.1043301   0.2184838
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1563234    0.1142859   0.1983609
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1820254    0.1308040   0.2332468
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.1851244   -0.0197982   0.3900471
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2891499    0.2124243   0.3658756
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.1722717    0.1236372   0.2209062
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1227515    0.0562517   0.1892514
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1860719    0.1703403   0.2018035
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1744256    0.1496308   0.1992204
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1987998    0.1764212   0.2211785
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1752054    0.1540069   0.1964038
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1936039    0.1444704   0.2427374
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1446711    0.0769125   0.2124297
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1606726    0.1119245   0.2094207
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1908788    0.1326748   0.2490827


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8772390   0.8535646   0.9009134
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0702868   1.0355019   1.1050717
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7600956   0.7374283   0.7827630
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9579130   0.9310445   0.9847815
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9711748   0.9453625   0.9969872
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9442402   0.9164250   0.9720554
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8849237   0.8543694   0.9154779
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9223779   0.9122086   0.9325472
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                1.1354743   1.0557030   1.2152455
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7967509   0.7797129   0.8137889
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8576832   0.8546710   0.8606955
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7394732   0.7257200   0.7532264
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4668324   0.4408845   0.4927803
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4195871   0.4109053   0.4282689
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                0.5883606   0.5672514   0.6094698
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4598586   0.4488398   0.4708774
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4413913   0.4384220   0.4443605
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4391710   0.4303780   0.4479640
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2558522   0.2469636   0.2647409
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                0.3203724   0.3008854   0.3398595
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2148174   0.2050742   0.2245606
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2849079   0.2723110   0.2975048
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2398525   0.2345783   0.2451267
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2046179   0.1945139   0.2147219
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2242885   0.2061680   0.2424089
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1548601   0.1460722   0.1636480
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2022567   0.1863082   0.2182053
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1545123   0.1502488   0.1587759
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1737296   0.1623947   0.1850645
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1810659   0.1624244   0.1997074
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1507021   0.1414031   0.1600010
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1518822   0.1181702   0.1855942
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1304576   0.1263404   0.1345747
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702121   0.1559390   0.1844852
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1713509   0.1529966   0.1897053
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1390423   0.1279954   0.1500893
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1738706   0.1423337   0.2054074
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1595310   0.1548323   0.1642296
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1921232   0.1732877   0.2109588
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1635896   0.1528248   0.1743543
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1818489   0.1616805   0.2020172
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2052948   0.1562051   0.2543845
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1844754   0.1744220   0.1945287
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1789517   0.1520986   0.2058049


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0398165   -0.1107742    0.0311413
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0622643   -0.1242777   -0.0002509
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0312256   -0.1008334    0.0383822
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0767541   -0.0120099    0.1655181
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0986081    0.0021191    0.1950971
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.1139681    0.0193523    0.2085840
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0301143   -0.0976061    0.0373775
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0212684   -0.0830521    0.0405154
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0210793   -0.0825005    0.0403418
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0011233   -0.0787698    0.0765232
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0183135   -0.0514149    0.0880420
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0575077   -0.1388626    0.0238471
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1022645    0.0206507    0.1838783
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0508027   -0.0249147    0.1265201
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0386703   -0.0328060    0.1101466
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0878213   -0.1662291   -0.0094134
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0934761   -0.1762455   -0.0107066
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0370072   -0.1097737    0.0357592
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0363244   -0.1155036    0.0428548
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0006490   -0.0895358    0.0908338
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0267784   -0.1081442    0.0545874
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0425400   -0.1075556    0.0224756
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0839164   -0.1505878   -0.0172450
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0096170   -0.0767067    0.0574727
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0174748   -0.0712511    0.0363014
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0055591   -0.0481942    0.0593123
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0202256   -0.0766046    0.0361534
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0468734    0.0040855    0.0896614
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0527271    0.0099842    0.0954700
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0205179   -0.0231900    0.0642258
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0222750   -0.0053600    0.0499099
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0124735   -0.0160902    0.0410372
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0182158   -0.0096538    0.0460853
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0084778   -0.0593726    0.0424169
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0220657   -0.0227644    0.0668958
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0160393   -0.0329468    0.0650255
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2744576   -0.4661349   -0.0827803
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2835934   -0.4816591   -0.0855276
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1996871   -0.4255504    0.0261762
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0144430   -0.0624931    0.0336071
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0225413   -0.0203660    0.0654486
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0068147   -0.0405151    0.0541446
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0373266   -0.0449517   -0.0297014
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0240707   -0.0315921   -0.0165492
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0101153   -0.0175428   -0.0026879
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0196841   -0.0580485    0.0186804
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0152851   -0.0516061    0.0210359
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0051322   -0.0351185    0.0453828
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0059335   -0.0472987    0.0591657
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0265979   -0.0718910    0.0186952
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0187372   -0.0680235    0.0305491
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0309216   -0.1163614    0.0545181
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0291393   -0.0598609    0.1181396
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0065926   -0.1040920    0.0909068
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0284492   -0.0784403    0.0215419
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0125325   -0.0339065    0.0589715
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0354642   -0.0139733    0.0849018
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0234493   -0.0409307    0.0878294
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0034267   -0.0619041    0.0550507
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0369372   -0.0920936    0.0182191
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0214126   -0.0764877    0.0336625
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0250974   -0.0778399    0.0276451
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0079647   -0.0655842    0.0496549
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0701464   -0.1518361    0.0115433
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0693322   -0.1482068    0.0095424
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0876353   -0.1683682   -0.0069025
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0383142   -0.0266636    0.1032920
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0143405   -0.0530509    0.0817319
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0109234   -0.0682045    0.0900513
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0555637   -0.1134448    0.0023173
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0499836   -0.1049773    0.0050101
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0457749   -0.1020727    0.0105230
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0032237   -0.0486719    0.0551193
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0343798   -0.0881159    0.0193562
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0052769   -0.0588956    0.0483417
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0245998   -0.0080774    0.0572771
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0417281   -0.0017156    0.0851717
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0080027   -0.0235204    0.0395259
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0167888   -0.0067546    0.0403322
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0091739   -0.0171470    0.0354948
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0043444   -0.0206349    0.0293238
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0010039   -0.0400776    0.0380699
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0074537   -0.0460572    0.0311499
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0013498   -0.0421759    0.0394763
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0615035   -0.1260025    0.0029954
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0194878   -0.0820794    0.0431037
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0261777   -0.0860969    0.0337415
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0099319   -0.0406315    0.0207678
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0460590   -0.0759147   -0.0162033
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0143836   -0.0437633    0.0149960
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0131796   -0.0211563   -0.0052029
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0146634   -0.0225889   -0.0067379
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0034593   -0.0114424    0.0045238
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0335004   -0.0563789   -0.0106220
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0158371   -0.0426676    0.0109933
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0126817   -0.0342815    0.0089182
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0340125   -0.0123301    0.0803551
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0205890   -0.0574728    0.0162949
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0150685   -0.0515748    0.0214377
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0058109   -0.0793618    0.0677400
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0318099   -0.1071325    0.0435126
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0183700   -0.0900529    0.0533129
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0156148   -0.0317468    0.0629764
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0083674   -0.0305593    0.0472942
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0086786   -0.0343959    0.0517530
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0215576   -0.0644217    0.0213066
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0091243   -0.0374686    0.0557173
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0291729   -0.0764001    0.0180543
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0043797   -0.0485415    0.0397821
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0043645   -0.0416319    0.0503609
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0159647   -0.0308743    0.0628037
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0302147   -0.0983714    0.0379420
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0352059   -0.0899052    0.0194933
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0351942   -0.0911827    0.0207943
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0283107   -0.1078438    0.0512225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0246479   -0.0978471    0.0485513
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0195404   -0.0973549    0.0582742
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0284728   -0.0776825    0.0207369
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0301870   -0.0771535    0.0167796
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0271574   -0.0680721    0.0137573
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0088399   -0.0290169    0.0466967
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0065330   -0.0328803    0.0459464
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0026580   -0.0407623    0.0354462
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0400176    0.0109463    0.0690890
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0195578   -0.0201393    0.0592550
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0031095   -0.0252437    0.0314627
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0101615   -0.0155710    0.0358940
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0148125   -0.0122813    0.0419063
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0019402   -0.0234932    0.0273737
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0166790   -0.0218803    0.0552383
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0047869   -0.0234259    0.0329998
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0089227   -0.0366347    0.0187893
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0468124   -0.1049847    0.0113599
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0173097   -0.0741069    0.0394875
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0145078   -0.0700283    0.0410128
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0164990   -0.0427759    0.0097779
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0294811   -0.0576576   -0.0013046
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0248223   -0.0511192    0.0014746
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0291589   -0.0064348    0.0647525
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0325447   -0.0050495    0.0701389
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0029938   -0.0294323    0.0354198
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0166159   -0.0316165   -0.0016153
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0147852   -0.0308859    0.0013155
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0159568   -0.0314298   -0.0004839
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0289640   -0.0146118    0.0725398
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0030009   -0.0419856    0.0359839
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0143115   -0.0249043    0.0535274
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0684664   -0.1554637    0.0185309
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0535417   -0.1345583    0.0274748
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0030028   -0.0954304    0.1014360
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0347154   -0.0111304    0.0805612
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0302577   -0.0072013    0.0677168
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0196971   -0.0213011    0.0606953
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0433975   -0.0802408   -0.0065541
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0326189   -0.0683666    0.0031287
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0633011   -0.1093116   -0.0172906
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0195755   -0.0589856    0.0198346
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0353572   -0.0785702    0.0078557
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0332289   -0.0794551    0.0129973
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0243491   -0.0948894    0.0461912
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0318845   -0.0934218    0.0296528
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0448626   -0.1071937    0.0174684
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0123203   -0.0451754    0.0698160
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0214433   -0.0395353    0.0824219
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0427553   -0.1025073    0.0169967
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0128152   -0.0626669    0.0370366
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0517509   -0.0011150    0.1046168
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0070043   -0.0443402    0.0583488
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0179083   -0.0599461    0.0241294
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0198031   -0.0237528    0.0633590
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0158362   -0.0234088    0.0550812
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0328412    0.0068093    0.0588730
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0200772   -0.0065335    0.0466878
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0171114   -0.0077337    0.0419566
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0038754   -0.0249241    0.0326748
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0210643   -0.0532957    0.0111671
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0330154   -0.0624775   -0.0035533
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0371069   -0.0756017    0.0013880
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0121950   -0.0459550    0.0215649
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0023991   -0.0328210    0.0376191
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0453924   -0.0996184    0.0088336
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0237024   -0.0794692    0.0320643
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0633066   -0.1174542   -0.0091589
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0052113   -0.0304509    0.0200284
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0205946   -0.0456132    0.0044240
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0040200   -0.0274352    0.0193952
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0351607   -0.0803793    0.0100579
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0276693   -0.0722155    0.0168769
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0085699   -0.0517366    0.0345969
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0056268   -0.0176732    0.0064195
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0030968   -0.0097742    0.0159678
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0018019   -0.0098027    0.0134066
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0271882   -0.0796811    0.0253048
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0031052   -0.0401505    0.0463608
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0104871   -0.0509804    0.0300061
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0037065   -0.0725212    0.0799342
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0236992   -0.0445701    0.0919684
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0445032   -0.0207381    0.1097444
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0019339   -0.0539460    0.0500783
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0265465   -0.0715275    0.0184345
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0001143   -0.0466094    0.0468379
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0378653   -0.0092155    0.0849461
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0428128    0.0022467    0.0833789
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0007848   -0.0495809    0.0511505
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0026770   -0.0506714    0.0453174
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0163843   -0.0642522    0.0314836
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0034118   -0.0503405    0.0435170
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0056637   -0.0621637    0.0734910
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0184230   -0.0642929    0.1011389
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0050994   -0.0698589    0.0596601
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0460000   -0.1199662    0.0279662
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0028430   -0.0605091    0.0548232
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0605279   -0.0085790    0.1296348
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0408834    0.0012787    0.0804882
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0146906   -0.0541842    0.0248029
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0050071   -0.0472610    0.0372469
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0234950   -0.0586606    0.0116705
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0194358   -0.0573939    0.0185223
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0104342   -0.0474194    0.0265510
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0038385   -0.0301699    0.0378469
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0150894   -0.0206065    0.0507853
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0049424   -0.0406720    0.0307873
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0040732   -0.0275798    0.0357262
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0158404   -0.0195908    0.0512716
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0047903   -0.0283766    0.0379573
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0090695   -0.0302940    0.0484330
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0000620   -0.0388497    0.0387256
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0076296   -0.0348402    0.0500993
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0557107   -0.0021392    0.1135606
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0212581   -0.0312352    0.0737513
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0387289   -0.0151787    0.0926364
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0034456   -0.0321650    0.0252738
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0137164   -0.0100910    0.0375239
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0149265   -0.0413156    0.0114626
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0114890   -0.1027032    0.1256812
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0785957   -0.0003661    0.1575576
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0567115   -0.0150796    0.1285027
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0043375   -0.0165164    0.0078414
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0120064   -0.0246000    0.0005872
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0043553   -0.0164658    0.0077552
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0113258   -0.0627897    0.0401382
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0022415   -0.0453127    0.0408298
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0079912   -0.0370140    0.0529964
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0165366   -0.0601433    0.0932165
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0212849   -0.1020464    0.0594767
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0132636   -0.0910803    0.0645531
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0291824   -0.0180916    0.0764563
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0309373   -0.0133694    0.0752441
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0131755   -0.0320974    0.0584485
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0025530   -0.0482527    0.0533586
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0159972   -0.0235800    0.0555744
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0200510   -0.0554208    0.0153187
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0481777   -0.0137806    0.1101360
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0216559   -0.0318260    0.0751378
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0561514    0.0084757    0.1038270
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0596549   -0.1380398    0.0187301
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0758054   -0.1614938    0.0098830
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0708095   -0.1438612    0.0022422
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0203697   -0.0441355    0.0848749
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0291467   -0.0942014    0.0359080
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0470375   -0.1124224    0.0183474
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0133765   -0.0651887    0.0384356
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0158020   -0.0484856    0.0168817
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0056090   -0.0266880    0.0379060
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0437425   -0.0848969   -0.0025881
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0226171   -0.0629949    0.0177607
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0240057   -0.0631977    0.0151864
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0320526   -0.0017478    0.0658529
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0280874   -0.0048882    0.0610631
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0019475   -0.0354542    0.0315593
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0084306   -0.0312119    0.0480730
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0014536   -0.0439189    0.0468260
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0030653   -0.0453906    0.0392600
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0232309   -0.0650355    0.0185738
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0003514   -0.0435840    0.0442867
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0257729   -0.0715366    0.0199908
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0295324   -0.0832811    0.0242162
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0099786   -0.0612417    0.0412844
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0067092   -0.0511238    0.0377055
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0066725   -0.0397792    0.0264341
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0157953   -0.0448208    0.0132301
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0081994   -0.0381556    0.0217568
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0671012   -0.1583884    0.0241861
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0095586   -0.1168318    0.0977146
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0120879   -0.0833824    0.0592065
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0037201   -0.0171570    0.0097168
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0050890   -0.0085247    0.0187026
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0007819   -0.0118965    0.0134603
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0243631   -0.0411448    0.0898709
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0380137   -0.0835600    0.0075325
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0269831   -0.0708027    0.0168365
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1188932   -0.1857795   -0.0520069
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0162707   -0.0869977    0.0544564
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0524443   -0.1191553    0.0142667
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0199999   -0.0647130    0.0247131
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0105966   -0.0512711    0.0300778
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0053539   -0.0489843    0.0382765
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0688898   -0.1127169   -0.0250627
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0644448   -0.1184267   -0.0104628
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0057777   -0.0480991    0.0365436
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0268321   -0.0829269    0.0292627
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0215804   -0.0757904    0.0326296
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0201360   -0.0710912    0.0308193
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0186065   -0.0932598    0.0560468
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0196931   -0.0885831    0.0491968
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0353467   -0.0367853    0.1074787
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0135055   -0.0931259    0.0661150
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0567144   -0.1225910    0.0091622
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0506785   -0.1212330    0.0198761
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0077212   -0.0430791    0.0585214
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0186441   -0.0204714    0.0577596
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0004388   -0.0409800    0.0418577
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0156115   -0.0581122    0.0268891
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0205771   -0.0602213    0.0190671
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0312196   -0.0733311    0.0108919
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0423480    0.0105864    0.0741095
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0215514   -0.0114228    0.0545256
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0511024    0.0198912    0.0823136
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0233125   -0.0218534    0.0684784
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0126321   -0.0568362    0.0315720
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0004514   -0.0415770    0.0406741
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0266379   -0.0251215    0.0783972
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0405865   -0.0207866    0.1019597
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0457882   -0.0118259    0.1034023
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0072798   -0.0214654    0.0360250
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0026001   -0.0273176    0.0325179
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0026018   -0.0275806    0.0327843
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0126027   -0.0744053    0.0492000
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0130447   -0.0402042    0.0662936
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0333088   -0.0872331    0.0206156
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0265946   -0.0247962    0.0779854
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0212978   -0.0211672    0.0637628
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0074564   -0.0338532    0.0487660
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0648930   -0.1425735    0.0127876
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0079438   -0.0764204    0.0605327
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0692241   -0.1263220   -0.0121263
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0038391   -0.0432052    0.0355270
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0061978   -0.0311319    0.0435276
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0061889   -0.0446738    0.0322959
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0346333   -0.0951872    0.0259207
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0142736   -0.0768109    0.0482637
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0105827   -0.0416659    0.0628313
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0327601   -0.0198346    0.0853548
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0377636   -0.0915614    0.0160341
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0136546   -0.0418639    0.0691730
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0543663   -0.0237915    0.1325241
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0236064   -0.0873469    0.0401341
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0380394   -0.1024491    0.0263703
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0053819   -0.1099273    0.0991635
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0179260   -0.0513349    0.0871870
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0356582   -0.1149513    0.0436349
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0135687   -0.0547328    0.0275954
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0102688   -0.0530922    0.0325546
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0113925   -0.0519459    0.0291610
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0255117   -0.0655970    0.0145737
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0229898   -0.0630073    0.0170277
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0132134   -0.0277705    0.0541973
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0053059   -0.0372666    0.0266548
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0017775   -0.0357959    0.0322410
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0088616   -0.0412581    0.0235348
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0202663   -0.0961433    0.0556107
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0253499   -0.0906042    0.0399045
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0003522   -0.0711855    0.0718898
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.1040255   -0.1147897    0.3228408
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0128528   -0.2234676    0.1977621
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0623729   -0.2778155    0.1530697
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0116463   -0.0410632    0.0177706
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0127279   -0.0146135    0.0400694
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0108665   -0.0373430    0.0156100
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0489328   -0.1322775    0.0344119
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0329313   -0.1020963    0.0362337
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0027251   -0.0788098    0.0733595


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0332617   -0.0756428    0.0091194
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0684635    0.0143802    0.1225468
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0141505   -0.0530354    0.0247344
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0109784   -0.0579973    0.0360405
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0483061   -0.0011276    0.0977399
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0569582   -0.1054568   -0.0084597
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0140417   -0.0649893    0.0369058
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0339104   -0.0737527    0.0059320
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0091721   -0.0424311    0.0240869
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0317509    0.0039101    0.0595917
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0139974   -0.0033199    0.0313146
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0074244   -0.0217912    0.0366400
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1897880   -0.3329412   -0.0466349
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0033087   -0.0194624    0.0260797
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0175781   -0.0223688   -0.0127873
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0072402   -0.0317461    0.0172657
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0099782   -0.0409411    0.0209847
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0033093   -0.0591151    0.0524964
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0051376   -0.0246500    0.0349251
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0045004   -0.0417975    0.0327967
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0140197   -0.0479996    0.0199602
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0588393   -0.1118327   -0.0058459
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0158871   -0.0274345    0.0592088
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0388105   -0.0748545   -0.0027664
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0116618   -0.0458781    0.0225545
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0191377   -0.0036503    0.0419257
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0077939   -0.0074539    0.0230417
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0024748   -0.0266815    0.0217320
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0283657   -0.0676743    0.0109430
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0140599   -0.0283528    0.0002330
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0064094   -0.0111914   -0.0016274
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0157760   -0.0301713   -0.0013806
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0021616   -0.0229423    0.0186190
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0236425   -0.0669276    0.0196426
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0117250   -0.0148380    0.0382880
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0115521   -0.0415458    0.0184416
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0053724   -0.0214946    0.0322394
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0259896   -0.0615693    0.0095901
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0216288   -0.0719825    0.0287248
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0204549   -0.0479918    0.0070820
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0035761   -0.0195625    0.0267148
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0166576   -0.0030205    0.0363357
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0063699   -0.0100423    0.0227821
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0035281   -0.0136586    0.0207147
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0198176   -0.0557022    0.0160671
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0151159   -0.0278870   -0.0023449
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0157944   -0.0043203    0.0359090
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0118304   -0.0218501   -0.0018108
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0090681   -0.0148647    0.0330010
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0295500   -0.0816873    0.0225873
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0226019   -0.0031849    0.0483888
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0359619   -0.0595784   -0.0123454
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0221936   -0.0468942    0.0025069
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0261415   -0.0644455    0.0121624
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0011623   -0.0359913    0.0336668
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0119785   -0.0204721    0.0444292
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0037047   -0.0225106    0.0299199
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0178303    0.0013720    0.0342886
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0112686   -0.0305710    0.0080338
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0127722   -0.0336514    0.0081070
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0328671   -0.0688464    0.0031122
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0060754   -0.0179983    0.0058475
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0205461   -0.0454399    0.0043477
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0001734   -0.0080699    0.0077230
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0078219   -0.0331444    0.0175007
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0173980   -0.0214905    0.0562864
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0068799   -0.0369271    0.0231673
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0178819   -0.0076659    0.0434297
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0063019   -0.0332547    0.0206509
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0017780   -0.0402910    0.0438470
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0014915   -0.0391584    0.0361753
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0013433   -0.0243859    0.0270726
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0150716   -0.0371290    0.0069858
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0038822   -0.0198325    0.0275970
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0059410   -0.0152109    0.0270929
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0038490   -0.0213477    0.0290458
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0285930   -0.0066568    0.0638429
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0005468   -0.0126756    0.0115820
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0265201   -0.0237495    0.0767896
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0051170   -0.0132128    0.0029788
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0002808   -0.0278736    0.0273119
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0064799   -0.0411980    0.0541578
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0163139   -0.0112359    0.0438638
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0000129   -0.0238124    0.0237866
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0264532   -0.0030663    0.0559727
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0488461   -0.0967475   -0.0009447
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0000546   -0.0392608    0.0391515
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0054949   -0.0272532    0.0162634
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0232258   -0.0487590    0.0023073
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0142825   -0.0074644    0.0360294
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0014872   -0.0255517    0.0285261
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0112429   -0.0377377    0.0152518
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0087606   -0.0393106    0.0217893
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0066790   -0.0208782    0.0075203
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0135771   -0.0674228    0.0402686
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0005119   -0.0077000    0.0087238
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0147275   -0.0422710    0.0128161
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0320916   -0.0688633    0.0046802
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0117954   -0.0376554    0.0140645
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0353876   -0.0616803   -0.0090949
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0151780   -0.0437402    0.0133842
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0001314   -0.0391785    0.0394413
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0324512   -0.0734937    0.0085913
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0067571   -0.0190334    0.0325475
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0172095   -0.0445943    0.0101754
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0299720    0.0104010    0.0495431
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0016521   -0.0240321    0.0273363
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0284378   -0.0082442    0.0651197
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0029312   -0.0106896    0.0165520
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0057364   -0.0366624    0.0251896
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0119886   -0.0129911    0.0369683
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0282400   -0.0639369    0.0074569
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0046672   -0.0279467    0.0186123
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0090854   -0.0453463    0.0271755
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0093590   -0.0178154    0.0365334
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0061947   -0.0470057    0.0346163
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0068650   -0.0521020    0.0383719
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0100391   -0.0357801    0.0157018
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0083966   -0.0338656    0.0170724
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0043666   -0.0254699    0.0167367
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0048558   -0.0470203    0.0373088
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0201704   -0.1624556    0.2027963
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0015965   -0.0145388    0.0113458
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0146522   -0.0560349    0.0267305
