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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        hhwealth_quart    n_cell       n
-------------  -------------------------  -----------------------------  ---------------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     239
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             58     239
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     239
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             60     239
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     210
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             53     210
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             53     210
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     210
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             57     232
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     232
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             57     232
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     232
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     230
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             57     230
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56     230
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     230
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             68     270
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             68     270
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             70     270
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             64     270
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             65     254
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             62     254
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     254
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             64     254
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             58     233
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             59     233
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             57     233
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             59     233
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             85     331
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             82     331
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             86     331
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             78     331
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4             96     394
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            103     394
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2             96     394
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3             99     394
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            148     640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            166     640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            170     640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            156     640
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            505    2014
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            614    2014
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            398    2014
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            497    2014
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            129     509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            125     509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            133     509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            122     509
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4              7      29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1              7      29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2              7      29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3              8      29
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            143     381
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1             90     381
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2             68     381
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3             80     381
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2512   10013
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2471   10013
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2483   10013
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2547   10013
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            138     639
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            165     639
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            150     639
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            186     639
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             56     233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             58     233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             59     233
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             52     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             52     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     208
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             57     230
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     230
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             55     230
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     230
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             58     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             58     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     233
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             67     267
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             67     267
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             69     267
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             64     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             55     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             60     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             58     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             82     322
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             79     322
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             85     322
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             76     322
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4             96     399
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            104     399
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2             99     399
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            100     399
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            133     601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            157     601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            164     601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            147     601
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            410    1659
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            502    1659
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            332    1659
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            415    1659
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            119     469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            117     469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            121     469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            112     469
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4             51     214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1             59     214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2             52     214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3             52     214
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            149     378
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1             83     378
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2             68     378
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3             78     378
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           1888    6295
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           1327    6295
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           1425    6295
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           1655    6295
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4             94     430
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            112     430
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            103     430
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            121     430
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             49     224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             56     224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             58     224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             46     198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             48     198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     198
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     230
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             57     230
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             56     230
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             56     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     230
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             67     245
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             60     245
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             58     245
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             60     245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             59     231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             50     231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             60     231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             62     231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             62     225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             48     225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             56     225
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             81     325
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             81     325
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             86     325
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             77     325
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            100     410
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            105     410
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            102     410
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            103     410
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            125     576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            151     576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            153     576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            147     576
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            362    1488
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            442    1488
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            312    1488
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            372    1488
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            118     477
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            123     477
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            127     477
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            109     477
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4             52     214
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1             59     214
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2             52     214
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3             51     214
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            149     375
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1             84     375
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2             71     375
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3             71     375
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            152     556
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            129     556
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            132     556
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            143     556
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            195     777
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            200     777
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            189     777
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            193     777
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             49     225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             57     225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             58     225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             43     194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             47     194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     194
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             58     227
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             53     227
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     227
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     227
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     229
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     229
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     229
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     229
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             65     235
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             53     235
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             58     235
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3             59     235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             53     233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             59     233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             60     233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             45     224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             60     224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             81     327
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             80     327
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             86     327
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             80     327
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4             99     403
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            102     403
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            100     403
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            102     403
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            124     569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            151     569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            149     569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            145     569
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            259    1077
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            337    1077
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            236    1077
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            245    1077
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            115     454
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            112     454
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            124     454
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            103     454
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     212
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     212
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     212
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3             49     212
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            167     420
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1             93     420
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2             80     420
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3             80     420
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            108     380
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1             93     380
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2             78     380
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            101     380
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            221     870
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            214     870
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            207     870
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            228     870
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             39     212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             56     212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             38     184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             42     184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     184
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             58     226
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     226
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     230
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     230
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57     230
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     230
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             64     224
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             49     224
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             53     224
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             58     224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             50     228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             60     228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             56     228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             43     226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             84     334
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             79     334
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             88     334
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             83     334
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4             96     392
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            100     392
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2             98     392
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3             98     392
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            113     537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            141     537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            146     537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            137     537
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            188     786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            238     786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            175     786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            185     786
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            118     452
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            107     452
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            122     452
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            105     452
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4             47     199
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1             56     199
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2             48     199
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3             48     199
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            172     410
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1             87     410
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2             82     410
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3             69     410
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             38     125
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             32     125
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             24     125
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             31     125
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            207     871
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            223     871
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            209     871
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            232     871
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60     212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             37     212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             58     212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             52     175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             34     175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             50     175
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             57     226
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     227
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     227
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56     227
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             58     227
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             66     214
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             43     214
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             50     214
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             55     214
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61     225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             45     225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             57     225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             40     220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     220
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             84     325
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             78     325
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             84     325
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             79     325
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4             93     383
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            102     383
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2             93     383
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3             95     383
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            112     533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            140     533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            148     533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            133     533
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            154     662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            207     662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            141     662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            160     662
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            125     477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            116     477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            127     477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            109     477
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4             45     189
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1             53     189
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2             45     189
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3             46     189
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            158     368
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1             75     368
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2             73     368
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3             62     368
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             31     118
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             30     118
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             25     118
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             32     118
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            203     879
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            225     879
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            230     879
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            221     879
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             31     209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60     209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             52     167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             26     167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             50     167
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             53     226
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             56     226
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58     227
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     227
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56     227
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             58     227
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             64     202
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             40     202
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             45     202
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             53     202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             49     233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62     233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             60     233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             60     208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             33     208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             58     208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57     208
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             83     310
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75     310
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             78     310
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             74     310
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4             91     380
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            102     380
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2             91     380
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3             96     380
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            119     542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            143     542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            144     542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            136     542
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              3      11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              5      11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1      11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              2      11
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            117     447
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            106     447
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            124     447
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            100     447
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4             44     183
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1             50     183
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2             44     183
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3             45     183
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            152     372
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1             76     372
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2             70     372
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3             74     372
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            135     452
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             94     452
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            115     452
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            108     452
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             29     207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60     207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57     207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             23     165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             38     165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     165
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     226
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     226
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             57     226
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     226
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     227
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             54     227
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             55     227
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     227
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             62     189
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             40     189
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             34     189
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             53     189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             63     235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             48     235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             61     235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     206
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             82     311
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77     311
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             76     311
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             76     311
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4             93     389
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            103     389
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2             94     389
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3             99     389
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4             99     485
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            127     485
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            130     485
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            129     485
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4             93     343
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1             75     343
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2             97     343
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3             78     343
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4              5      38
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1             14      38
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2             10      38
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3              9      38
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            164     412
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1             88     412
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2             81     412
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3             79     412
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            112     382
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             79     382
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            100     382
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             91     382


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
![](/tmp/008b61ec-b3c1-48b0-912a-54dbd915d0f5/ab87b984-3a03-4795-9324-3232b298d205/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/008b61ec-b3c1-48b0-912a-54dbd915d0f5/ab87b984-3a03-4795-9324-3232b298d205/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/008b61ec-b3c1-48b0-912a-54dbd915d0f5/ab87b984-3a03-4795-9324-3232b298d205/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.9126722    0.8620655   0.9632788
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.8594787    0.8102157   0.9087416
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.8539720    0.8139899   0.8939541
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.8826289    0.8349380   0.9303199
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.9962050    0.9360589   1.0563512
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                1.0790905    1.0105139   1.1476670
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                1.0906913    1.0176714   1.1637112
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                1.1169201    1.0452514   1.1885888
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.7781313    0.7339464   0.8223162
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.7462484    0.6954576   0.7970392
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.7592660    0.7171263   0.8014057
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.7575110    0.7147945   0.8002275
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.9721099    0.9210826   1.0231371
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.9658299    0.9094914   1.0221684
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.9876783    0.9436706   1.0316860
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.9080566    0.8487872   0.9673260
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.9200269    0.8626783   0.9773754
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                1.0243833    0.9692843   1.0794823
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.9748771    0.9277632   1.0219910
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.9649362    0.9235737   1.0062987
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.9978024    0.9391893   1.0564154
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.9112313    0.8563415   0.9661212
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.9028912    0.8434319   0.9623504
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.9625213    0.9174817   1.0075610
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8965290    0.8355634   0.9574947
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8682595    0.8128996   0.9236194
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9022946    0.8330792   0.9715100
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.8733972    0.8152850   0.9315094
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7819935    0.7360071   0.8279798
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7390014    0.6936888   0.7843140
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6955609    0.6475646   0.7435573
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7729538    0.7252202   0.8206873
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                0.7760060    0.7388894   0.8131226
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                0.7584755    0.7204759   0.7964751
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                0.7826882    0.7443966   0.8209798
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                0.7558652    0.7142741   0.7974564
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8675436    0.8364878   0.8985994
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.9169002    0.8882497   0.9455507
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.9232619    0.8950945   0.9514293
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.8942165    0.8645908   0.9238423
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.9101144    0.8892518   0.9309770
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.9285559    0.9093164   0.9477955
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9215446    0.9008350   0.9422543
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.9278736    0.9076985   0.9480487
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.8193038    0.7866338   0.8519737
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.8106097    0.7727453   0.8484741
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.8436286    0.8137229   0.8735343
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8338540    0.7987794   0.8689285
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.3252623    1.1599844   1.4905403
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                1.0508047    0.9537307   1.1478788
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.0416690    0.9325212   1.1508167
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                1.1255753    0.9716356   1.2795149
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7710148    0.7313018   0.8107279
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7846050    0.7289804   0.8402297
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8133572    0.7620912   0.8646232
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7298989    0.6653866   0.7944112
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.8811692    0.8732760   0.8890624
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.8242370    0.8171422   0.8313317
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.8384477    0.8300543   0.8468412
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.8579959    0.8508739   0.8651178
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.7424347    0.6902996   0.7945698
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.7222042    0.6797590   0.7646494
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.7106690    0.6616967   0.7596413
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.7454918    0.6875737   0.8034099
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.4854680    0.4495661   0.5213699
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.4860152    0.4485385   0.5234919
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.4593899    0.4336081   0.4851717
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.4678631    0.4352815   0.5004448
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.5789770    0.5144630   0.6434910
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.5466611    0.4924597   0.6008625
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.6087441    0.5493352   0.6681530
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.5783969    0.5087279   0.6480658
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.4415809    0.4077524   0.4754094
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.4110193    0.3745680   0.4474707
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4549895    0.4238507   0.4861284
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4749178    0.4389653   0.5108702
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.5284145    0.4854961   0.5713329
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.5447171    0.4974448   0.5919894
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.5237589    0.4877115   0.5598063
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.4905125    0.4580496   0.5229755
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.5096919    0.4716115   0.5477723
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.4956777    0.4571502   0.5342052
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.4844163    0.4495340   0.5192985
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.5038102    0.4638136   0.5438068
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.5241836    0.4641424   0.5842249
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.4551327    0.4044143   0.5058512
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.4549681    0.4081276   0.5018086
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.4331918    0.3872847   0.4790990
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4438008    0.3921230   0.4954787
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4789000    0.4404905   0.5173096
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.4539891    0.4124999   0.4954783
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.4522271    0.3944922   0.5099620
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5140621    0.4700513   0.5580730
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.4540344    0.4168552   0.4912135
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.4624532    0.4300834   0.4948230
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4693436    0.4340660   0.5046211
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                0.4770566    0.4372923   0.5168209
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4814170    0.4492033   0.5136307
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4396760    0.4056038   0.4737483
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                0.4656988    0.4317109   0.4996867
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.4669527    0.4433506   0.4905548
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4942085    0.4725538   0.5158633
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.5111806    0.4769798   0.5453814
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.4788889    0.4595807   0.4981971
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4118776    0.3946054   0.4291497
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4285386    0.4128952   0.4441820
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.4233350    0.4038725   0.4427976
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.4133775    0.3957441   0.4310109
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4976329    0.4698274   0.5254385
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4965241    0.4695977   0.5234504
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4937995    0.4680460   0.5195531
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5028439    0.4727777   0.5329100
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.6154652    0.5712318   0.6596985
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.5581750    0.5144100   0.6019399
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.5962866    0.5554551   0.6371181
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.5881004    0.5507251   0.6254756
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4649568    0.4394065   0.4905071
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4356877    0.4008493   0.4705262
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4378726    0.3972700   0.4784752
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4323112    0.3934543   0.4711681
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4569542    0.4481285   0.4657800
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.4389370    0.4310824   0.4467917
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4377161    0.4301730   0.4452592
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4447309    0.4370705   0.4523913
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.4519190    0.4200276   0.4838104
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4161850    0.3811005   0.4512694
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4541796    0.3820602   0.5262991
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.4449772    0.4138302   0.4761242
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.2453732    0.2251244   0.2656221
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.2751184    0.2377852   0.3124516
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.2271773    0.1981651   0.2561895
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.2280873    0.1993994   0.2567751
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.3985414    0.3490804   0.4480023
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.3903691    0.3373857   0.4433526
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.3673158    0.3118149   0.4228168
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.3755459    0.3251428   0.4259489
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.2233030    0.1923251   0.2542809
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.2403473    0.2052050   0.2754896
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.2340147    0.2111124   0.2569169
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.2299966    0.2011329   0.2588604
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.2789934    0.2443893   0.3135975
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.2629637    0.2400672   0.2858603
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.2884352    0.2607203   0.3161501
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.2483638    0.2204574   0.2762703
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.2579461    0.2277023   0.2881898
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.2550914    0.2263507   0.2838321
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.2564724    0.2245468   0.2883980
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.2763014    0.2436919   0.3089110
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2778503    0.2391094   0.3165911
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2630199    0.2087934   0.3172463
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.2492606    0.2105429   0.2879783
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.2486924    0.2106897   0.2866952
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2538623    0.1925706   0.3151540
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2267280    0.1804953   0.2729607
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2328217    0.1980294   0.2676139
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2370036    0.1943859   0.2796213
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2779553    0.2478917   0.3080189
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2521204    0.2149914   0.2892495
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2488629    0.2151393   0.2825866
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2601046    0.2348717   0.2853374
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2584034    0.2326642   0.2841425
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2657020    0.2392276   0.2921764
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2626342    0.2334169   0.2918515
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2636017    0.2343434   0.2928600
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2298729    0.2115837   0.2481620
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2766589    0.2556098   0.2977080
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2479864    0.2156054   0.2803674
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2385559    0.2197610   0.2573507
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2489140    0.2299919   0.2678360
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2602160    0.2433624   0.2770695
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2629941    0.2439894   0.2819988
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2514292    0.2350385   0.2678200
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1860221    0.1698706   0.2021735
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1960178    0.1633235   0.2287122
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1887430    0.1669752   0.2105107
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1778209    0.1560368   0.1996050
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.3422521    0.3021671   0.3823371
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2946519    0.2548905   0.3344132
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.3234679    0.2859678   0.3609681
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.3246627    0.2880434   0.3612820
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2218092    0.2006643   0.2429540
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1974585    0.1677433   0.2271737
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1807089    0.1415599   0.2198580
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2025569    0.1667931   0.2383207
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.2712392    0.2492679   0.2932106
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.2982888    0.2714661   0.3251114
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3013054    0.2719056   0.3307051
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.2722298    0.2496289   0.2948308
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2421561    0.2141138   0.2701983
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2153575    0.2005989   0.2301161
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2278765    0.2080601   0.2476929
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2396110    0.2244968   0.2547251
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1659351    0.1397581   0.1921121
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1926930    0.1625453   0.2228407
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.1605155    0.1342117   0.1868194
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1761967    0.1497488   0.2026445
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.3122860    0.2553381   0.3692339
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.2388739    0.1783858   0.2993619
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.2566947    0.2032591   0.3101303
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.3200690    0.2441533   0.3959847
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1574369    0.1260139   0.1888598
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1909095    0.1580444   0.2237746
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1885742    0.1680674   0.2090810
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1794954    0.1535937   0.2053972
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.2229548    0.1984126   0.2474970
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1776707    0.1520003   0.2033412
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1871422    0.1626140   0.2116703
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1563016    0.1208145   0.1917887
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.2097575    0.1805972   0.2389177
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1884319    0.1626564   0.2142074
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1720148    0.1417019   0.2023278
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1772876    0.1425733   0.2120019
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2342459    0.1918128   0.2766789
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2042951    0.1537051   0.2548850
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.2122458    0.1693797   0.2551119
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.2062171    0.1652220   0.2472122
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1640193    0.1265991   0.2014395
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1818091    0.1459964   0.2176218
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1962016    0.1541071   0.2382961
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1280070    0.0865307   0.1694833
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2068527    0.1712262   0.2424792
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1864259    0.1546895   0.2181624
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2446700    0.2071616   0.2821783
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2090177    0.1759794   0.2420561
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2083123    0.1786713   0.2379533
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1902143    0.1616437   0.2187850
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2311347    0.2007430   0.2615264
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2234431    0.1990766   0.2478096
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1534846    0.1355289   0.1714403
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1932560    0.1739893   0.2125227
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1806554    0.1613264   0.1999844
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1785108    0.1615184   0.1955033
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2164653    0.1938886   0.2390421
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2204373    0.2028505   0.2380241
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1933367    0.1710577   0.2156157
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1812005    0.1627843   0.1996168
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1512098    0.1297148   0.1727048
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1198880    0.0909067   0.1488693
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1448022    0.1208423   0.1687620
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1611625    0.1348134   0.1875116
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.2587462    0.2171901   0.3003024
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2114879    0.1785872   0.2443885
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2326989    0.1976254   0.2677724
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1942086    0.1617310   0.2266862
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1541857    0.1343898   0.1739816
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1430897    0.1150444   0.1711350
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1256410    0.0975428   0.1537392
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1392123    0.1126141   0.1658105
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.2170416    0.1881401   0.2459430
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1808160    0.1454586   0.2161734
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1990572    0.1669534   0.2311610
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.2086605    0.1779380   0.2393831
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1392556    0.1199730   0.1585383
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1457852    0.1311125   0.1604579
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1470025    0.1281694   0.1658355
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1361606    0.1225955   0.1497257
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1402588    0.1123724   0.1681451
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1153367    0.0732800   0.1573934
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.1467053    0.1151225   0.1782881
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1327523    0.1051928   0.1603118
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.1908066    0.1459966   0.2356166
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.1939214    0.1348201   0.2530227
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.2178858    0.1677687   0.2680029
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.2361340    0.1901855   0.2820825
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1811191    0.1475772   0.2146610
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1798679    0.1431125   0.2166232
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1546869    0.1279289   0.1814450
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1807621    0.1512206   0.2103037
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1419952    0.1167122   0.1672783
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1675311    0.1320562   0.2030060
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1730033    0.1437727   0.2022339
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1299403    0.0902099   0.1696706
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.1485776    0.1166373   0.1805179
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1446983    0.1113205   0.1780761
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1310483    0.0972605   0.1648360
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1414620    0.1074754   0.1754486
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.1728802    0.1281908   0.2175695
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2012385    0.1561513   0.2463257
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.2011803    0.1376604   0.2647002
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.1845979    0.1419210   0.2272747
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1498401    0.1096352   0.1900451
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1099079    0.0475959   0.1722200
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1495241    0.1090591   0.1899890
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2149593    0.1609240   0.2689945
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1455795    0.1147237   0.1764352
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1871108    0.1625316   0.2116900
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1300307    0.1058632   0.1541983
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1422021    0.1134803   0.1709239
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1957714    0.1720454   0.2194974
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1701361    0.1456069   0.1946653
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1798036    0.1524430   0.2071643
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1833824    0.1570922   0.2096727
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1713769    0.1462036   0.1965501
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1831289    0.1616420   0.2046158
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1912928    0.1674495   0.2151360
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1719845    0.1489276   0.1950414
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1654727    0.1411842   0.1897612
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1731378    0.1531221   0.1931535
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1854769    0.1606352   0.2103187
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1717694    0.1496230   0.1939157
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1677749    0.1385760   0.1969737
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1695289    0.1446296   0.1944282
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1709513    0.1487014   0.1932012
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1809475    0.1526632   0.2092319
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.1516436    0.1112461   0.1920411
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2073512    0.1677685   0.2469340
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.1717381    0.1399049   0.2035713
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1885368    0.1551036   0.2219701
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1506865    0.1328829   0.1684901
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1398573    0.1044746   0.1752400
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1498708    0.1217529   0.1779887
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1549514    0.1210674   0.1888353
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1200876    0.0623272   0.1778480
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1360196    0.0399498   0.2320893
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1942703    0.1429109   0.2456297
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1744140    0.1340960   0.2147320
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1268870    0.1007510   0.1530229
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1299216    0.1144629   0.1453803
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1162366    0.1022676   0.1302056
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1284237    0.1113863   0.1454612
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1468862    0.1147735   0.1789990
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1300511    0.0938413   0.1662608
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.1398830    0.1123533   0.1674128
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1496985    0.1200800   0.1793169
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.2111721    0.1526312   0.2697129
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.2236090    0.1784026   0.2688155
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.1890252    0.1369929   0.2410575
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.1928555    0.1444619   0.2412491
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1467192    0.1164847   0.1769536
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1688058    0.1398576   0.1977539
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1777827    0.1483311   0.2072342
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1581710    0.1281926   0.1881494
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1741047    0.1492610   0.1989485
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1765330    0.1331406   0.2199254
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1905724    0.1604487   0.2206961
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1535003    0.1290507   0.1779500
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.1208614    0.0857631   0.1559596
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1601006    0.1127255   0.2074758
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1379363    0.0999081   0.1759646
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1732077    0.1427925   0.2036230
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.2715603    0.2191814   0.3239393
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2141151    0.1584573   0.2697729
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.2036480    0.1380855   0.2692105
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.2015056    0.1551305   0.2478806
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1590023    0.1140967   0.2039078
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1710018    0.1259389   0.2160647
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1299554    0.0850599   0.1748510
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1201652    0.0747340   0.1655964
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1577193    0.1349007   0.1805379
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1457807    0.1032205   0.1883410
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1417313    0.1197143   0.1637484
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1637327    0.1419966   0.1854689
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1820300    0.1545163   0.2095437
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1424446    0.1143713   0.1705179
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1581262    0.1320451   0.1842073
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1609661    0.1350207   0.1869115
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1463808    0.1235245   0.1692371
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1729599    0.1486831   0.1972367
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1636642    0.1407753   0.1865531
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1391277    0.1160807   0.1621746
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1683494    0.1376270   0.1990719
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1802503    0.1557031   0.2047975
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1656765    0.1336060   0.1977470
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1630150    0.1347152   0.1913148
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2453639    0.2150953   0.2756326
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2202701    0.1919816   0.2485585
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2468366    0.2169654   0.2767079
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2240085    0.1907147   0.2573023
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.1892258    0.1591237   0.2193278
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.1521511    0.1089502   0.1953520
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.1741281    0.1358093   0.2124469
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1732693    0.1437007   0.2028379
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1281403    0.1067190   0.1495616
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0920036    0.0527522   0.1312550
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1105667    0.0758567   0.1452768
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1330651    0.0937373   0.1723930
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1963160    0.1364397   0.2561923
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1317986    0.0617100   0.2018872
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1823475    0.0975432   0.2671517
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1849464    0.1507331   0.2191597
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1497384    0.1322127   0.1672642
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1664026    0.1462618   0.1865435
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1511239    0.1365251   0.1657227
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1580024    0.1364889   0.1795159
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1564655    0.1239619   0.1889691
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1781048    0.1280689   0.2281407
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.1190295    0.0887792   0.1492798
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1336833    0.1057656   0.1616010
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.1925248    0.1505308   0.2345189
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.0894741    0.0416315   0.1373168
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.1851831    0.1318324   0.2385338
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.1453729    0.1018399   0.1889059
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1819799    0.1531865   0.2107734
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1587847    0.1269651   0.1906043
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1725183    0.1452757   0.1997609
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1760206    0.1449823   0.2070588
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1812837    0.1548958   0.2076715
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1125859    0.0792867   0.1458850
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1152220    0.0712200   0.1592240
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1779884    0.1464619   0.2095150
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.1764507    0.1429075   0.2099939
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.1484671    0.1066658   0.1902683
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1556408    0.1154397   0.1958419
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1585059    0.1211597   0.1958521
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.1776798    0.1314021   0.2239575
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.1566674    0.1009318   0.2124030
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.1599485    0.1063847   0.2135123
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.2108325    0.1551607   0.2665042
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1769543    0.1286120   0.2252967
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1647197    0.1020681   0.2273713
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1233038    0.0811484   0.1654591
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1269643    0.0783445   0.1755840
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1297478    0.1001758   0.1593199
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1377277    0.0994090   0.1760464
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1455352    0.1211375   0.1699329
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1279967    0.1003162   0.1556773
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1756650    0.1425413   0.2087886
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1598916    0.1344067   0.1853765
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1552030    0.1336633   0.1767427
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1457724    0.1202474   0.1712974
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1055040    0.0844216   0.1265864
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1444022    0.1215804   0.1672239
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1247178    0.1001951   0.1492405
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1517995    0.1304624   0.1731366
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1424047    0.1128394   0.1719701
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1640103    0.1304476   0.1975731
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1271989    0.0956667   0.1587311
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1383136    0.1100855   0.1665417
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.1644701    0.1237717   0.2051686
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.1916655    0.1632417   0.2200893
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2038535    0.1608234   0.2468836
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.2082009    0.1705433   0.2458584
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1419196    0.1181613   0.1656779
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1570626    0.1261296   0.1879956
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1394512    0.0982528   0.1806496
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1675068    0.1293132   0.2057005
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1878960    0.1510382   0.2247539
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1774721    0.1288403   0.2261039
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.2012710    0.1628364   0.2397057
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1574183    0.1187177   0.1961189
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.1413745    0.1108816   0.1718673
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.1592580    0.1241157   0.1944004
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.1618456    0.1327752   0.1909160
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.1497343    0.1236744   0.1757943
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.1718963    0.1273574   0.2164352
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.1201285    0.0602149   0.1800421
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.1694504    0.1198941   0.2190066
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.1051624    0.0699514   0.1403734
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.1586712    0.1312028   0.1861396
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.1526767    0.1260459   0.1793075
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.1596974    0.1356478   0.1837470
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.1536819    0.1268576   0.1805062
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.1762303    0.1318128   0.2206477
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.1402638    0.1000284   0.1804992
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.1687299    0.1255353   0.2119245
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.1884809    0.1595297   0.2174322
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.1730754    0.1419429   0.2042079
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.2077320    0.1666549   0.2488090
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.1528435    0.1119976   0.1936894
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.1898236    0.1463327   0.2333145
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.1867754    0.1416878   0.2318631
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.2448150    0.1870800   0.3025501
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.1653879    0.1222390   0.2085368
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.1665864    0.1226548   0.2105181
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1503887    0.0979701   0.2028074
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1260600    0.0415060   0.2106140
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1661722    0.1233669   0.2089775
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1124807    0.0573294   0.1676321
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1559828    0.1260804   0.1858853
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1426600    0.1166138   0.1687062
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1475943    0.1187270   0.1764616
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1470405    0.1208014   0.1732796
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1837605    0.1561331   0.2113880
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1637847    0.1379318   0.1896376
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1627162    0.1351130   0.1903193
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2008451    0.1721204   0.2295699
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1450150    0.1225190   0.1675111
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1403004    0.1189773   0.1616235
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1467693    0.1219035   0.1716351
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1364421    0.1145241   0.1583600
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1872056    0.1385442   0.2358669
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1736822    0.1177917   0.2295727
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1616207    0.1195346   0.2037068
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1863449    0.1362239   0.2364659
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.1851244   -0.0197982   0.3900471
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2891499    0.2124243   0.3658756
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.1722717    0.1236372   0.2209062
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1227515    0.0562517   0.1892514
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1679914    0.1459489   0.1900339
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1636760    0.1299697   0.1973822
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1823923    0.1511045   0.2136800
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1458130    0.1086067   0.1830193
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.2036119    0.1543275   0.2528962
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1418876    0.0770178   0.2067575
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1717832    0.1250823   0.2184842
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.1886549    0.1326752   0.2446345


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
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7731490   0.7472791   0.7990189
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8506310   0.8465842   0.8546777
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7306440   0.7043689   0.7569191
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
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4469213   0.4301947   0.4636479
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4455876   0.4413049   0.4498703
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4411996   0.4183110   0.4640882
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
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2049279   0.1901588   0.2196969
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2849079   0.2723110   0.2975048
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2311525   0.2209713   0.2413338
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
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1434396   0.1309560   0.1559231
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2022567   0.1863082   0.2182053
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1418939   0.1335225   0.1502652
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
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1489432   0.1356567   0.1622297
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1518822   0.1181702   0.1855942
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1255177   0.1155109   0.1355245
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
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1181192   0.1025528   0.1336855
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1738706   0.1423337   0.2054074
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1564443   0.1467929   0.1660957
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
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1496388   0.1337256   0.1655520
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
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1656482   0.1508563   0.1804402
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1789517   0.1520986   0.2058049


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0531935   -0.1238184    0.0174314
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0587002   -0.1231951    0.0057948
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0300432   -0.0995807    0.0394943
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0828854   -0.0083302    0.1741011
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0944863   -0.0001153    0.1890879
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.1207151    0.0271525    0.2142776
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0318829   -0.0992031    0.0354373
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0188653   -0.0799232    0.0421925
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0206204   -0.0820777    0.0408370
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0062800   -0.0822919    0.0697319
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0155684   -0.0518145    0.0829513
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0640533   -0.1422623    0.0141556
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1043564    0.0248281    0.1838848
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0548502   -0.0193696    0.1290700
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0449093   -0.0257994    0.1156180
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0865711   -0.1668729   -0.0062692
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0949112   -0.1784031   -0.0114193
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0352810   -0.1092003    0.0386383
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0282696   -0.1106196    0.0540805
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0057655   -0.0864710    0.0980021
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0231319   -0.1073568    0.0610931
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0429920   -0.1075519    0.0215679
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0864325   -0.1529035   -0.0199615
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0090397   -0.0753212    0.0572418
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0175305   -0.0706494    0.0355884
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0066822   -0.0466460    0.0600103
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0201408   -0.0758855    0.0356039
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0493566    0.0071036    0.0916096
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0557183    0.0137914    0.0976452
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0266729   -0.0162473    0.0695932
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0184415   -0.0099382    0.0468213
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0114302   -0.0179660    0.0408265
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0177592   -0.0112629    0.0467813
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0086941   -0.0587044    0.0413163
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0243249   -0.0199659    0.0686157
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0145502   -0.0333825    0.0624830
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2744576   -0.4661349   -0.0827803
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2835934   -0.4816591   -0.0855276
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1996871   -0.4255504    0.0261762
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0135902   -0.0547562    0.0819366
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0423424   -0.0225062    0.1071909
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0411160   -0.1168719    0.0346400
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0569322   -0.0676219   -0.0462426
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0427215   -0.0538895   -0.0315535
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0231733   -0.0337309   -0.0126158
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0202305   -0.0853680    0.0449071
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0317657   -0.1034796    0.0399482
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0030571   -0.0751463    0.0812605
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0005472   -0.0513512    0.0524456
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0260781   -0.0702782    0.0181219
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0176048   -0.0660869    0.0308772
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0323159   -0.1165765    0.0519447
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0297671   -0.0579339    0.1174682
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0005801   -0.0955318    0.0943715
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0305616   -0.0802915    0.0191684
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0134086   -0.0325695    0.0593868
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0333369   -0.0160286    0.0827023
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0163026   -0.0475461    0.0801514
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0046556   -0.0607039    0.0513926
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0379020   -0.0917149    0.0159110
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0140142   -0.0681850    0.0401567
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0252756   -0.0769175    0.0263663
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0058817   -0.0611070    0.0493437
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0690509   -0.1476468    0.0095450
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0692155   -0.1453666    0.0069355
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0909918   -0.1665724   -0.0154112
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0350992   -0.0292894    0.0994878
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0101883   -0.0560836    0.0764601
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0084263   -0.0690587    0.0859112
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0600278   -0.1176406   -0.0024149
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0516089   -0.1062419    0.0030240
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0447186   -0.1011230    0.0116858
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0043604   -0.0468150    0.0555358
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0373805   -0.0897458    0.0149847
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0113578   -0.0636682    0.0409526
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0272558   -0.0047752    0.0592869
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0442279    0.0026737    0.0857821
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0119362   -0.0185575    0.0424299
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0166610   -0.0066423    0.0399643
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0114575   -0.0145640    0.0374789
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0014999   -0.0231834    0.0261832
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0011089   -0.0398152    0.0375974
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0038334   -0.0417332    0.0340664
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0052109   -0.0357418    0.0461636
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0572902   -0.1195153    0.0049349
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0191786   -0.0793766    0.0410195
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0273648   -0.0852742    0.0305446
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0292691   -0.0724725    0.0139343
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0270842   -0.0750569    0.0208886
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0326456   -0.0791502    0.0138590
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0180172   -0.0296358   -0.0063986
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0192381   -0.0308693   -0.0076070
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0122233   -0.0234492   -0.0009974
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0357341   -0.0823245    0.0108564
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0022606   -0.0764079    0.0809291
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0069418   -0.0505780    0.0366943
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0297452   -0.0127258    0.0722162
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0181959   -0.0535756    0.0171838
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0172860   -0.0524002    0.0178283
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0081722   -0.0806542    0.0643097
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0312255   -0.1055676    0.0431165
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0229955   -0.0936132    0.0476221
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0170444   -0.0298023    0.0638911
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0107117   -0.0278129    0.0492363
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0066937   -0.0356472    0.0490345
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0160297   -0.0575230    0.0254636
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0094418   -0.0348928    0.0537764
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0306296   -0.0750842    0.0138250
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0028547   -0.0445766    0.0388672
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0014736   -0.0454501    0.0425028
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0183554   -0.0261201    0.0628309
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0148304   -0.0814740    0.0518131
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0285897   -0.0833612    0.0261817
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0291579   -0.0834263    0.0251105
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0271343   -0.1039076    0.0496390
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0210406   -0.0915188    0.0494376
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0168587   -0.0915108    0.0577935
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0258348   -0.0736092    0.0219395
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0290923   -0.0742709    0.0160863
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0178507   -0.0571001    0.0213988
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0072986   -0.0296256    0.0442229
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0042308   -0.0347070    0.0431687
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0051984   -0.0337703    0.0441670
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0467860    0.0189013    0.0746708
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0181135   -0.0190755    0.0553025
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0086830   -0.0175418    0.0349078
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0113020   -0.0140374    0.0366414
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0140801   -0.0127382    0.0408985
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0025153   -0.0225187    0.0275492
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0099958   -0.0264705    0.0464621
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0027209   -0.0243846    0.0298263
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0082012   -0.0353197    0.0189174
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0476002   -0.1040606    0.0088601
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0187842   -0.0736756    0.0361072
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0175894   -0.0718829    0.0367041
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0243506   -0.0608211    0.0121199
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0411002   -0.0855947    0.0033942
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0192523   -0.0607993    0.0222947
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0270495   -0.0076231    0.0617222
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0300661   -0.0066366    0.0667688
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0009906   -0.0305299    0.0325111
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0267986   -0.0581012    0.0045040
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0142796   -0.0489973    0.0204381
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0025451   -0.0347951    0.0297049
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0267579   -0.0131685    0.0666843
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0054196   -0.0425292    0.0316901
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0102616   -0.0269503    0.0474734
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0734122   -0.1564896    0.0096653
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0555914   -0.1336838    0.0225010
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0077829   -0.0871184    0.1026842
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0334727   -0.0119973    0.0789426
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0311374   -0.0063850    0.0686597
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0220586   -0.0186637    0.0627808
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0452841   -0.0807988   -0.0097694
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0358126   -0.0705106   -0.0011147
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0666532   -0.1098001   -0.0235063
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0213256   -0.0602447    0.0175935
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0377427   -0.0798045    0.0043192
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0324699   -0.0778065    0.0128666
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0299508   -0.0959804    0.0360788
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0220001   -0.0823165    0.0383163
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0280288   -0.0870302    0.0309726
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0177898   -0.0340061    0.0695858
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0321824   -0.0241401    0.0885048
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0360123   -0.0918742    0.0198497
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0204268   -0.0681389    0.0272854
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0378173   -0.0139140    0.0895485
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0021650   -0.0464228    0.0507529
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0180979   -0.0592668    0.0230709
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0228224   -0.0196305    0.0652752
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0151308   -0.0232399    0.0535016
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0397714    0.0134348    0.0661079
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0271708    0.0007887    0.0535530
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0250262    0.0003048    0.0497477
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0039720   -0.0246463    0.0325902
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0231286   -0.0548471    0.0085899
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0352648   -0.0644001   -0.0061295
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0313218   -0.0674043    0.0047607
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0064077   -0.0385963    0.0257810
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0099527   -0.0240519    0.0439573
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0472584   -0.1002619    0.0057451
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0260473   -0.0804262    0.0283316
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0645376   -0.1172795   -0.0117957
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0110960   -0.0454240    0.0232321
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0285447   -0.0629159    0.0058266
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0149734   -0.0481297    0.0181830
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0362255   -0.0818921    0.0094411
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0179843   -0.0611810    0.0252123
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0083810   -0.0505612    0.0337991
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0065296   -0.0181700    0.0312291
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0077468   -0.0193109    0.0348045
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0030950   -0.0259030    0.0197129
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0249221   -0.0753841    0.0255399
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0064465   -0.0356857    0.0485787
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0075065   -0.0467133    0.0317003
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0031148   -0.0710532    0.0772829
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0270792   -0.0401492    0.0943076
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0453274   -0.0188536    0.1095084
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0012512   -0.0510108    0.0485083
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0264322   -0.0693396    0.0164753
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0003570   -0.0450533    0.0443394
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0255359   -0.0180267    0.0690985
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0310081   -0.0076398    0.0696560
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0120550   -0.0591478    0.0350379
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0038793   -0.0500774    0.0423188
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0175293   -0.0640245    0.0289658
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0071156   -0.0537554    0.0395242
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0283583   -0.0351239    0.0918406
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0283001   -0.0493652    0.1059655
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0117177   -0.0500759    0.0735113
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0399322   -0.1140890    0.0342246
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0003161   -0.0573586    0.0567264
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0651191   -0.0022325    0.1324708
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0415314    0.0020825    0.0809802
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0155487   -0.0547424    0.0236450
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0033774   -0.0455321    0.0387773
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0256353   -0.0597616    0.0084910
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0159678   -0.0521828    0.0202473
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0123890   -0.0478023    0.0230243
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0117520   -0.0213444    0.0448485
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0199159   -0.0147567    0.0545886
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0006076   -0.0335290    0.0347443
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0076651   -0.0238080    0.0391383
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0200042   -0.0147383    0.0547467
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0062967   -0.0265726    0.0391660
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0017540   -0.0366198    0.0401278
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0031765   -0.0335336    0.0398866
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0131726   -0.0274793    0.0538245
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0557076   -0.0008498    0.1122651
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0200945   -0.0313380    0.0715271
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0368933   -0.0155447    0.0893312
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0108292   -0.0504385    0.0287801
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0008157   -0.0340961    0.0324647
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0042649   -0.0340117    0.0425414
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0159320   -0.0961647    0.1280286
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0741827   -0.0031093    0.1514747
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0543264   -0.0161137    0.1247665
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0030346   -0.0263166    0.0323858
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0106504   -0.0406046    0.0193039
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0015368   -0.0283105    0.0313840
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0168352   -0.0652332    0.0315629
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0070032   -0.0493011    0.0352947
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0028122   -0.0408739    0.0464984
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0124370   -0.0615269    0.0864009
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0221468   -0.1004692    0.0561755
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0183166   -0.0942703    0.0576372
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0220866   -0.0197717    0.0639449
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0310635   -0.0111445    0.0732715
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0114518   -0.0311255    0.0540291
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0024283   -0.0475729    0.0524294
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0164676   -0.0225791    0.0555144
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0206044   -0.0554613    0.0142524
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0392393   -0.0197208    0.0981994
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0170750   -0.0346748    0.0688247
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0523464    0.0059031    0.0987896
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0574452   -0.1338740    0.0189835
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0679123   -0.1518289    0.0160043
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0700548   -0.1400133   -0.0000962
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0119995   -0.0516178    0.0756169
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0290468   -0.0925458    0.0344521
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0388371   -0.1027159    0.0250417
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0119385   -0.0602300    0.0363529
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0159880   -0.0476966    0.0157207
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0060135   -0.0255008    0.0375278
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0395854   -0.0788933   -0.0002775
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0239038   -0.0618145    0.0140070
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0210640   -0.0588815    0.0167536
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0265791   -0.0067642    0.0599224
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0172834   -0.0150634    0.0496301
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0072531   -0.0397119    0.0252056
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0119009   -0.0274239    0.0512256
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0026729   -0.0470844    0.0417387
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0053344   -0.0471046    0.0364357
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0250939   -0.0665237    0.0163360
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0014727   -0.0410536    0.0439990
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0213555   -0.0663518    0.0236408
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0370747   -0.0897287    0.0155794
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0150976   -0.0638261    0.0336308
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0159564   -0.0581516    0.0262388
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0361367   -0.0808530    0.0085795
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0175736   -0.0583615    0.0232144
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0049248   -0.0398585    0.0497082
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0645174   -0.1566997    0.0276650
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0139685   -0.1177805    0.0898435
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0113696   -0.0803313    0.0575921
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0166642   -0.0103260    0.0436545
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0013855   -0.0204817    0.0232527
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0082640   -0.0189343    0.0354623
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0216393   -0.0380271    0.0813057
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0374359   -0.0818382    0.0069664
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0227822   -0.0656294    0.0200651
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1030507   -0.1667093   -0.0393921
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0073417   -0.0752372    0.0605537
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0471519   -0.1076385    0.0133346
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0231952   -0.0661085    0.0197181
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0094616   -0.0491003    0.0301771
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0059594   -0.0482965    0.0363778
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0686978   -0.1111849   -0.0262107
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0660617   -0.1173695   -0.0147538
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0032952   -0.0444078    0.0378173
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0279837   -0.0815793    0.0256120
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0208099   -0.0731671    0.0315473
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0179448   -0.0681432    0.0322537
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0210124   -0.0934561    0.0514313
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0177313   -0.0885177    0.0530551
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0331527   -0.0392419    0.1055472
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0122346   -0.0913687    0.0668995
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0536506   -0.1177915    0.0104903
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0499900   -0.1185529    0.0185728
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0079799   -0.0404229    0.0563827
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0157873   -0.0225501    0.0541247
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0017511   -0.0422569    0.0387547
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0157734   -0.0575664    0.0260196
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0204620   -0.0599731    0.0190492
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0298926   -0.0717100    0.0119249
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0388982    0.0078289    0.0699674
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0192138   -0.0131255    0.0515531
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0462955    0.0162998    0.0762911
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0216056   -0.0231221    0.0663333
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0152059   -0.0584308    0.0280190
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0040911   -0.0449682    0.0367859
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0271954   -0.0224461    0.0768368
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0393834   -0.0198446    0.0986114
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0437307   -0.0117170    0.0991785
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0151430   -0.0238610    0.0541469
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0024684   -0.0500264    0.0450896
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0255872   -0.0193929    0.0705673
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0104239   -0.0714449    0.0505970
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0133750   -0.0398765    0.0666265
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0304777   -0.0839215    0.0229660
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0178836   -0.0286438    0.0644110
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0204711   -0.0216585    0.0626007
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0083599   -0.0317517    0.0484714
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0517678   -0.1264227    0.0228871
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0024459   -0.0690758    0.0641839
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0667339   -0.1235100   -0.0099577
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0059945   -0.0442530    0.0322640
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0010262   -0.0354826    0.0375350
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0049893   -0.0433827    0.0334041
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0359664   -0.0958981    0.0239652
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0075003   -0.0694575    0.0544568
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0122507   -0.0407690    0.0652704
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0346566   -0.0168852    0.0861984
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0202319   -0.0715897    0.0311259
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0167482   -0.0367372    0.0702337
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0580396   -0.0152149    0.1312942
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0213875   -0.0837953    0.0410202
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0201890   -0.0831405    0.0427625
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0243288   -0.1238129    0.0751554
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0157834   -0.0518923    0.0834592
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0379080   -0.1139961    0.0381800
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0133228   -0.0529783    0.0263327
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0083885   -0.0499515    0.0331744
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0089423   -0.0487248    0.0308401
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0199758   -0.0578130    0.0178613
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0210443   -0.0600983    0.0180096
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0170846   -0.0227700    0.0569392
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0047146   -0.0357105    0.0262813
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0017543   -0.0317775    0.0352861
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0085730   -0.0399811    0.0228351
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0135234   -0.0876292    0.0605825
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0255848   -0.0899212    0.0387515
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0008607   -0.0707179    0.0689966
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.1040255   -0.1147897    0.3228408
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0128528   -0.2234676    0.1977621
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0623729   -0.2778155    0.1530697
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0043154   -0.0445893    0.0359585
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0144009   -0.0238718    0.0526736
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0221784   -0.0654240    0.0210672
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0617242   -0.1431923    0.0197438
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0318286   -0.0997251    0.0360678
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0149570   -0.0895403    0.0596263


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0354332   -0.0782775    0.0074112
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0740818    0.0192954    0.1288681
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0180357   -0.0568531    0.0207818
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0141968   -0.0590576    0.0306639
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0511480    0.0032050    0.0990909
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0535622   -0.1030683   -0.0040561
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0116054   -0.0645199    0.0413091
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0352376   -0.0751102    0.0046350
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0080155   -0.0409441    0.0249132
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0341036    0.0069718    0.0612353
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0122635   -0.0056359    0.0301629
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0077084   -0.0208280    0.0362448
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1897880   -0.3329412   -0.0466349
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0021342   -0.0304618    0.0347302
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0305382   -0.0372904   -0.0237861
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0117907   -0.0584403    0.0348589
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0108179   -0.0408701    0.0192343
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0007794   -0.0556993    0.0541404
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0036405   -0.0261050    0.0333860
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0066982   -0.0431964    0.0297999
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0114584   -0.0443464    0.0214296
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0573512   -0.1068823   -0.0078201
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0133289   -0.0295862    0.0562439
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0389055   -0.0750734   -0.0027376
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0109849   -0.0445844    0.0226147
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0221084    0.0001780    0.0440389
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0077096   -0.0073319    0.0227510
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0000212   -0.0239270    0.0238846
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0271046   -0.0654400    0.0112309
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0180355   -0.0384791    0.0024081
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0113666   -0.0180829   -0.0046503
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0107194   -0.0428894    0.0214507
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0025181   -0.0224572    0.0174211
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0153915   -0.0580065    0.0272234
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0085201   -0.0177671    0.0348073
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0094201   -0.0377597    0.0189195
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0034472   -0.0221341    0.0290286
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0184619   -0.0527764    0.0158527
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0155019   -0.0631084    0.0321046
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0183663   -0.0450491    0.0083164
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0042276   -0.0188296    0.0272849
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0192925    0.0010014    0.0375835
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0069383   -0.0092741    0.0231507
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0014279   -0.0152317    0.0180875
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0218797   -0.0566025    0.0128431
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0168813   -0.0344861    0.0007236
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0136686   -0.0057602    0.0330975
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0110036   -0.0332859    0.0112788
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0070995   -0.0152711    0.0294701
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0276938   -0.0775184    0.0221309
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0214071   -0.0046774    0.0474916
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0369628   -0.0594278   -0.0144979
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0222768   -0.0470632    0.0025095
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0196014   -0.0562794    0.0170766
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0028695   -0.0294911    0.0352302
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0054781   -0.0252879    0.0362441
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0049121   -0.0205730    0.0303973
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0240470    0.0076450    0.0404490
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0118474   -0.0309954    0.0073006
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0072191   -0.0269468    0.0125086
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0344578   -0.0692155    0.0003000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0107461   -0.0261110    0.0046188
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0147848   -0.0395810    0.0100114
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0026382   -0.0131519    0.0184284
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0049001   -0.0291126    0.0193123
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0193880   -0.0189194    0.0576953
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0071630   -0.0354480    0.0211220
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0106987   -0.0135288    0.0349262
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0068386   -0.0335948    0.0199176
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0165444   -0.0228028    0.0558915
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0096038   -0.0271932    0.0464009
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0048873   -0.0208788    0.0306534
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0136288   -0.0348640    0.0076064
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0086555   -0.0137946    0.0311057
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0082569   -0.0126286    0.0291424
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0043326   -0.0197448    0.0284100
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0294223   -0.0053424    0.0641871
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0017433   -0.0168282    0.0133416
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0317946   -0.0176454    0.0812346
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0013693   -0.0219792    0.0192406
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0040981   -0.0303864    0.0221902
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0077526   -0.0535743    0.0380691
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0158554   -0.0098394    0.0415502
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0006137   -0.0240634    0.0228360
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0253275   -0.0034442    0.0540993
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0479499   -0.0933472   -0.0025525
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0162000   -0.0539617    0.0215617
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0055358   -0.0267933    0.0157217
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0215714   -0.0455181    0.0023753
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0099706   -0.0110382    0.0309795
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0018627   -0.0247540    0.0284794
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0105904   -0.0364469    0.0152662
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0178749   -0.0463621    0.0106124
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0100212   -0.0275469    0.0075046
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0224454   -0.0743685    0.0294777
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0067059   -0.0090095    0.0224212
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0137508   -0.0406967    0.0131951
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0318757   -0.0671927    0.0034413
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0093134   -0.0341851    0.0155583
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0337839   -0.0593211   -0.0082468
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0148855   -0.0426713    0.0129003
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0005999   -0.0419180    0.0407181
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0306005   -0.0707048    0.0095037
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0054849   -0.0197502    0.0307200
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0166858   -0.0440856    0.0107140
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0269841    0.0074837    0.0464846
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0000100   -0.0256553    0.0256354
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0276531   -0.0071985    0.0625048
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0077192   -0.0111597    0.0265980
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0060472   -0.0369303    0.0248360
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0107411   -0.0139691    0.0354513
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0284063   -0.0638263    0.0070138
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0024009   -0.0255065    0.0207047
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0071891   -0.0438447    0.0294666
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0083917   -0.0184934    0.0352769
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0008807   -0.0379391    0.0397004
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0090700   -0.0524965    0.0343564
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0075338   -0.0323846    0.0173170
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0060265   -0.0303003    0.0182473
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0030446   -0.0237876    0.0176985
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0103881   -0.0513780    0.0306019
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0201704   -0.1624556    0.2027963
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0023431   -0.0201718    0.0154856
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0246601   -0.0662021    0.0168819
