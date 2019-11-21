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

**Outcome Variable:** co

## Predictor Variables

**Intervention Variable:** wast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                         wast06   co   n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  -------  ---  -------  -----  -----------------
0-6 months     ki0047075b-MAL-ED          BANGLADESH                           0    0      203    263  co               
0-6 months     ki0047075b-MAL-ED          BANGLADESH                           0    1        0    263  co               
0-6 months     ki0047075b-MAL-ED          BANGLADESH                           1    0       56    263  co               
0-6 months     ki0047075b-MAL-ED          BANGLADESH                           1    1        4    263  co               
0-6 months     ki0047075b-MAL-ED          BRAZIL                               0    0      218    233  co               
0-6 months     ki0047075b-MAL-ED          BRAZIL                               0    1        0    233  co               
0-6 months     ki0047075b-MAL-ED          BRAZIL                               1    0       15    233  co               
0-6 months     ki0047075b-MAL-ED          BRAZIL                               1    1        0    233  co               
0-6 months     ki0047075b-MAL-ED          INDIA                                0    0      169    251  co               
0-6 months     ki0047075b-MAL-ED          INDIA                                0    1        0    251  co               
0-6 months     ki0047075b-MAL-ED          INDIA                                1    0       76    251  co               
0-6 months     ki0047075b-MAL-ED          INDIA                                1    1        6    251  co               
0-6 months     ki0047075b-MAL-ED          NEPAL                                0    0      192    240  co               
0-6 months     ki0047075b-MAL-ED          NEPAL                                0    1        0    240  co               
0-6 months     ki0047075b-MAL-ED          NEPAL                                1    0       47    240  co               
0-6 months     ki0047075b-MAL-ED          NEPAL                                1    1        1    240  co               
0-6 months     ki0047075b-MAL-ED          PERU                                 0    0      291    302  co               
0-6 months     ki0047075b-MAL-ED          PERU                                 0    1        0    302  co               
0-6 months     ki0047075b-MAL-ED          PERU                                 1    0       11    302  co               
0-6 months     ki0047075b-MAL-ED          PERU                                 1    1        0    302  co               
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                         0    0      277    312  co               
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                         0    1        0    312  co               
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                         1    0       34    312  co               
0-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                         1    1        1    312  co               
0-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF         0    0      248    261  co               
0-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF         0    1        0    261  co               
0-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF         1    0       13    261  co               
0-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF         1    1        0    261  co               
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                0    0      178    368  co               
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                0    1        0    368  co               
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                1    0      181    368  co               
0-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                1    1        9    368  co               
0-6 months     ki1000108-IRC              INDIA                                0    0      186    409  co               
0-6 months     ki1000108-IRC              INDIA                                0    1        0    409  co               
0-6 months     ki1000108-IRC              INDIA                                1    0      212    409  co               
0-6 months     ki1000108-IRC              INDIA                                1    1       11    409  co               
0-6 months     ki1000109-EE               PAKISTAN                             0    0      255    379  co               
0-6 months     ki1000109-EE               PAKISTAN                             0    1        0    379  co               
0-6 months     ki1000109-EE               PAKISTAN                             1    0       94    379  co               
0-6 months     ki1000109-EE               PAKISTAN                             1    1       30    379  co               
0-6 months     ki1000109-ResPak           PAKISTAN                             0    0      173    282  co               
0-6 months     ki1000109-ResPak           PAKISTAN                             0    1        0    282  co               
0-6 months     ki1000109-ResPak           PAKISTAN                             1    0      103    282  co               
0-6 months     ki1000109-ResPak           PAKISTAN                             1    1        6    282  co               
0-6 months     ki1017093b-PROVIDE         BANGLADESH                           0    0      519    700  co               
0-6 months     ki1017093b-PROVIDE         BANGLADESH                           0    1        0    700  co               
0-6 months     ki1017093b-PROVIDE         BANGLADESH                           1    0      171    700  co               
0-6 months     ki1017093b-PROVIDE         BANGLADESH                           1    1       10    700  co               
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         0    0     2063   2396  co               
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         0    1        0   2396  co               
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         1    0      322   2396  co               
0-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         1    1       11   2396  co               
0-6 months     ki1101329-Keneba           GAMBIA                               0    0     1792   2462  co               
0-6 months     ki1101329-Keneba           GAMBIA                               0    1        0   2462  co               
0-6 months     ki1101329-Keneba           GAMBIA                               1    0      632   2462  co               
0-6 months     ki1101329-Keneba           GAMBIA                               1    1       38   2462  co               
0-6 months     ki1112895-Guatemala BSC    GUATEMALA                            0    0      285    295  co               
0-6 months     ki1112895-Guatemala BSC    GUATEMALA                            0    1        0    295  co               
0-6 months     ki1112895-Guatemala BSC    GUATEMALA                            1    0        2    295  co               
0-6 months     ki1112895-Guatemala BSC    GUATEMALA                            1    1        8    295  co               
0-6 months     ki1113344-GMS-Nepal        NEPAL                                0    0      429    686  co               
0-6 months     ki1113344-GMS-Nepal        NEPAL                                0    1        0    686  co               
0-6 months     ki1113344-GMS-Nepal        NEPAL                                1    0      244    686  co               
0-6 months     ki1113344-GMS-Nepal        NEPAL                                1    1       13    686  co               
0-6 months     ki1114097-CMIN             BANGLADESH                           0    0      221    271  co               
0-6 months     ki1114097-CMIN             BANGLADESH                           0    1        0    271  co               
0-6 months     ki1114097-CMIN             BANGLADESH                           1    0       40    271  co               
0-6 months     ki1114097-CMIN             BANGLADESH                           1    1       10    271  co               
0-6 months     ki1114097-CONTENT          PERU                                 0    0      211    215  co               
0-6 months     ki1114097-CONTENT          PERU                                 0    1        0    215  co               
0-6 months     ki1114097-CONTENT          PERU                                 1    0        4    215  co               
0-6 months     ki1114097-CONTENT          PERU                                 1    1        0    215  co               
18-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                0    0        5      5  co               
18-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                0    1        0      5  co               
18-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                1    0        0      5  co               
18-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                1    1        0      5  co               
18-24 months   ki1000108-IRC              INDIA                                0    0        1      1  co               
18-24 months   ki1000108-IRC              INDIA                                0    1        0      1  co               
18-24 months   ki1000108-IRC              INDIA                                1    0        0      1  co               
18-24 months   ki1000108-IRC              INDIA                                1    1        0      1  co               
18-24 months   ki1101329-Keneba           GAMBIA                               0    0      222    264  co               
18-24 months   ki1101329-Keneba           GAMBIA                               0    1        0    264  co               
18-24 months   ki1101329-Keneba           GAMBIA                               1    0       26    264  co               
18-24 months   ki1101329-Keneba           GAMBIA                               1    1       16    264  co               


The following strata were considered:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-24 months, studyid: ki1101329-Keneba, country: GAMBIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-24 months, studyid: ki1101329-Keneba, country: GAMBIA


ALL STRATA DROPPED. JOB FINISHED
















