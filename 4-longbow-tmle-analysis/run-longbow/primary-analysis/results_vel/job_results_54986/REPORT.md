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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        anywast06    n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  ----------  -------  -----  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               187    243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                56    243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               156    168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                12    168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0               125    183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                58    183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               131    156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                25    156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0               255    265  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1                10    265  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               185    211  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                26    211  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               215    228  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    228  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                35     88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                53     88  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          0               158    377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          1               219    377  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       0               203    303  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       1               100    303  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       0                48     80  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       1                32     80  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               473    640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               167    640  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         0               802   1276  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         1               474   1276  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0               298    509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               211    509  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     0                34     43  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     1                 9     43  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           0                29     29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           1                 0     29  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               179    231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                52    231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               193    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                15    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0               153    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                77    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               186    233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                47    233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0               258    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1                 9    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               214    243  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                29    243  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               226    239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    239  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               145    307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               162    307  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          0               175    397  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1               222    397  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       0               186    280  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       1                94    280  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       0                93    156  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       1                63    156  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               445    598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               153    598  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1402   1661  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               259   1661  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         0               936   1397  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         1               461   1397  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               270    469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               199    469  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     0               153    185  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     1                32    185  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           0               210    214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           1                 4    214  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               173    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                51    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               183    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                15    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0               153    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                77    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               184    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                46    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0               235    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1                10    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               203    231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                28    231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               212    225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    225  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               153    312  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               159    312  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          0               180    407  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1               227    407  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       0               197    304  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       1               107    304  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       0                88    143  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       1                55    143  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               425    565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               140    565  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1274   1488  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               214   1488  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         0               637    902  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         1               265    902  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0               196    200  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                 4    200  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0               279    481  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               202    481  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     0               154    177  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     1                23    177  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           0               210    214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           1                 4    214  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               173    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                52    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               179    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                15    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0               151    227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                76    227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               183    229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                46    229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0               225    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1                10    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               205    233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                28    233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               211    224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    224  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               151    313  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               162    313  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          0               178    400  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1               222    400  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       0               214    326  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       1               112    326  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       0                83    140  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       1                57    140  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               424    566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               142    566  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               922   1081  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               159   1081  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         0               622    876  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         1               254    876  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0               170    175  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 5    175  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0               273    469  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               196    469  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     0               135    160  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     1                25    160  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           0               208    212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           1                 4    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               161    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                51    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               170    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                14    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0               151    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                75    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               184    230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                46    230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0               215    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1                 9    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               201    228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                27    228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    226  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               151    324  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               173    324  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          0               173    390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1               217    390  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       0               189    297  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       1               108    297  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       0                54     91  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       1                37     91  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               400    532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               132    532  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               685    791  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               106    791  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         0               892   1303  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         1               411   1303  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                84     88  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 4     88  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0               276    469  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               193    469  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     0               136    160  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     1                24    160  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           0               195    199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           1                 4    199  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               163    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                49    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               162    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                13    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               151    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                75    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               181    227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                46    227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0               204    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1                 9    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               201    225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                24    225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               205    217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                12    217  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               146    317  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               171    317  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          0               171    382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1               211    382  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       0               178    278  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       1               100    278  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               395    528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1               133    528  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               574    664  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                90    664  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         0               912   1311  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         1               399   1311  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0               287    480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               193    480  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     0               139    163  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     1                24    163  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           0               186    189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           1                 3    189  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               161    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                48    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               154    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                13    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               150    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                76    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               181    227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                46    227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0               195    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1                 7    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               208    233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                25    233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               193    204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    204  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               139    302  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               163    302  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          0               170    379  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1               209    379  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       0               161    254  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       1                93    254  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               407    541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               134    541  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 8      9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      9  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         0               894   1285  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         1               391   1285  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0               260    445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               185    445  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     0               137    165  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     1                28    165  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           0               180    183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           1                 3    183  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               158    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                49    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               152    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                13    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               150    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                76    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               181    227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                46    227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0               183    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1                 6    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               210    235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                25    235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               193    204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    204  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               143    304  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               161    304  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          0               173    389  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1               216    389  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       0                63    106  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       1                43    106  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               354    471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               117    471  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         0               803   1158  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         1               355   1158  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0               210    342  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               132    342  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     0               112    133  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     1                21    133  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           0                37     38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           1                 1     38  y_rate_len       


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
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/208ecf83-d39b-43f1-b20d-0575b6d19d22/c7fa55b6-3af0-48cf-a9a1-7fcd9bc4262e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/208ecf83-d39b-43f1-b20d-0575b6d19d22/c7fa55b6-3af0-48cf-a9a1-7fcd9bc4262e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/208ecf83-d39b-43f1-b20d-0575b6d19d22/c7fa55b6-3af0-48cf-a9a1-7fcd9bc4262e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.3625940   3.2916599   3.4335281
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.2422400   3.0907267   3.3937532
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                3.8070016   3.6901241   3.9238791
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                3.7387334   3.2785998   4.1988669
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.3405121   3.2309844   3.4500397
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.3856653   3.1839824   3.5873482
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.6026151   3.4976625   3.7075677
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.6442231   3.3972083   3.8912378
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.0337870   2.9666988   3.1008751
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.6410898   3.1754198   4.1067599
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.1880718   3.0831690   3.2929746
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.0565566   2.7691917   3.3439216
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2897750   3.2143267   3.3652233
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                2.6942077   2.2944362   3.0939792
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.3947577   3.0807500   3.7087654
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.6665954   3.3697251   3.9634657
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.3125983   3.1585387   3.4666578
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.0111839   2.8595776   3.1627903
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                3.1455143   3.0546876   3.2363409
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.9321681   2.7676806   3.0966556
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.7404221   2.4330519   3.0477923
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.5270984   3.0146009   4.0395959
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.2817441   3.2394566   3.3240316
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.1911754   3.1160459   3.2663049
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.2553478   3.2023656   3.3083300
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.8638210   2.7791350   2.9485069
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                3.6317562   3.5683166   3.6951959
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                3.5535206   3.4682149   3.6388263
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                3.3974552   3.2482615   3.5466488
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                3.5344317   3.2018253   3.8670381
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9367680   1.8813877   1.9921483
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9029465   1.7783003   2.0275927
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1428081   2.0593598   2.2262564
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.1422604   1.8873641   2.3971567
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.9063306   1.8337878   1.9788734
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.8776257   1.7528463   2.0024052
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9617691   1.8967700   2.0267682
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.9760663   1.8616774   2.0904551
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                2.0245976   1.9569348   2.0922604
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.7601051   1.5001565   2.0200536
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9848934   1.9008601   2.0689266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.8560268   1.5813442   2.1307095
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8180444   1.7485749   1.8875138
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                2.1521641   1.7071958   2.5971325
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8788976   1.7260656   2.0317296
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.7187850   1.5844760   1.8530941
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8673486   1.7749947   1.9597025
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8840456   1.7959296   1.9721615
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.1436439   2.0781421   2.2091456
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                1.9998581   1.8860647   2.1136515
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0211375   1.8826684   2.1596067
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.0543043   1.7233279   2.3852806
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9781650   1.9405631   2.0157670
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9291319   1.8544209   2.0038429
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8016912   1.7643361   1.8390463
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7663881   1.6521577   1.8806185
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9880485   1.9417570   2.0343400
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.0000347   1.9263111   2.0737582
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7375246   1.6912072   1.7838420
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.6719431   1.6038964   1.7399899
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9649518   1.8895390   2.0403646
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.8942989   1.6979167   2.0906811
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.2502209   1.2058257   1.2946160
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.2279932   1.1234235   1.3325630
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.4733176   1.3897452   1.5568900
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.5942172   1.2738053   1.9146292
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.2318233   1.1745199   1.2891267
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.2692711   1.1634823   1.3750600
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.3485609   1.3005323   1.3965894
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.3744493   1.2664579   1.4824406
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                1.3245399   1.2691289   1.3799510
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.4013617   1.1242406   1.6784828
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.3692177   1.3023874   1.4360479
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.4532870   1.2116024   1.6949716
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2104686   1.1273687   1.2935684
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9405877   0.7375933   1.1435821
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.2598261   1.1413833   1.3782689
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.1622369   1.0612744   1.2631993
6-9 months     ki1000108-IRC              INDIA                          0                    NA                1.3814954   1.3068967   1.4560941
6-9 months     ki1000108-IRC              INDIA                          1                    NA                1.3667394   1.3023852   1.4310936
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                1.1587611   1.1016115   1.2159108
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                1.2039938   1.1221889   1.2857986
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                1.5034410   1.3783693   1.6285128
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.3879820   1.2067884   1.5691757
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.2743034   1.2444885   1.3041183
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.3122230   1.2643169   1.3601291
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3290878   1.2892497   1.3689259
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2852747   1.1929610   1.3775884
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.4260886   1.3673856   1.4847917
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.3554889   1.2529621   1.4580156
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.3390426   1.2846796   1.3934056
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.2827712   1.2184761   1.3470663
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.2591677   1.1968982   1.3214372
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.3406702   1.1229180   1.5584224
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.9831256   0.9381037   1.0281475
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9906646   0.9105398   1.0707893
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3085641   1.2306174   1.3865109
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.1601341   0.9222463   1.3980219
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.9446316   0.8968408   0.9924224
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.0656940   1.0044353   1.1269526
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.0712491   1.0254395   1.1170587
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.1632097   1.0776714   1.2487480
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.0998534   1.0476977   1.1520090
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.0414655   0.8037911   1.2791399
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.0119828   0.9424644   1.0815012
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.0629995   0.8759235   1.2500755
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8197961   0.7350944   0.9044978
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7919378   0.5641019   1.0197736
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.9192758   0.8102116   1.0283399
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8888715   0.8052220   0.9725210
9-12 months    ki1000108-IRC              INDIA                          0                    NA                1.1384683   1.0829592   1.1939774
9-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1105409   1.0558286   1.1652533
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                0.8987566   0.8575095   0.9400036
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                0.9478583   0.8827840   1.0129326
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.2783466   1.1311232   1.4255701
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.0981396   0.8734947   1.3227845
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.0512852   1.0195614   1.0830089
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.0486863   0.9988609   1.0985117
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0849676   1.0482348   1.1217005
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0773200   0.9806625   1.1739776
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.9820629   0.9315266   1.0325993
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.9856628   0.9055695   1.0657561
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                1.0335848   0.9927471   1.0744226
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.0119008   0.6840315   1.3397701
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.9790776   0.9369687   1.0211866
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.0196870   0.9637489   1.0756251
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.9651355   0.8986624   1.0316086
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.9430094   0.8084713   1.0775475
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8970964   0.8504375   0.9437552
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9662672   0.8687336   1.0638009
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.1459296   1.0840302   1.2078291
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.2729955   0.9787686   1.5672224
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.9267649   0.8797760   0.9737539
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8877906   0.8150758   0.9605054
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.9580115   0.9132402   1.0027828
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.9250753   0.8425092   1.0076413
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8879275   0.8420682   0.9337869
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.9825156   0.6310375   1.3339937
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.9196302   0.8583058   0.9809545
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8781207   0.7061673   1.0500740
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8610906   0.7938011   0.9283802
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8872796   0.5973457   1.1772135
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7884879   0.7001166   0.8768592
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9022683   0.7945801   1.0099565
12-15 months   ki1000108-IRC              INDIA                          0                    NA                0.9912119   0.9169278   1.0654959
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.9193384   0.8743129   0.9643639
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                1.0398343   0.9997046   1.0799641
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                0.9571431   0.9017367   1.0125494
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                1.2933557   1.0796566   1.5070548
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                1.2138350   0.9522303   1.4754398
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.9692369   0.9389437   0.9995301
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9300797   0.8827110   0.9774483
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9270268   0.8877917   0.9662620
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9411918   0.8298282   1.0525554
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.9567258   0.9196225   0.9938291
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9133601   0.8569054   0.9698147
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8602509   0.8199684   0.9005334
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9070256   0.8667639   0.9472873
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.8536130   0.7944118   0.9128143
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.9741073   0.8319686   1.1162460
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8384004   0.7952380   0.8815627
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7881641   0.7028644   0.8734638
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.0116753   0.9509963   1.0723544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.0567365   0.8236493   1.2898237
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8236337   0.7799919   0.8672755
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8820401   0.8166081   0.9474721
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8512787   0.8017929   0.9007644
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8428029   0.7748413   0.9107645
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8536146   0.8099323   0.8972969
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8492630   0.7031059   0.9954200
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8727893   0.8164315   0.9291472
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9538504   0.8076387   1.1000621
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6872175   0.6251622   0.7492728
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7796879   0.4746554   1.0847204
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6585280   0.5846114   0.7324446
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8042235   0.7040060   0.9044410
15-18 months   ki1000108-IRC              INDIA                          0                    NA                0.9034920   0.8393523   0.9676317
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.8262338   0.7754418   0.8770258
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8695952   0.8279971   0.9111933
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7926025   0.7347965   0.8504085
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8531868   0.8257840   0.8805896
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8707644   0.8202240   0.9213049
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9384583   0.8925581   0.9843586
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9256850   0.8265125   1.0248575
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8727328   0.8334702   0.9119954
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8937096   0.8412130   0.9462062
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7451242   0.7011107   0.7891377
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7686084   0.7122844   0.8249325
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7529520   0.6955873   0.8103167
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6779984   0.5563503   0.7996466
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8133758   0.7752677   0.8514838
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8364356   0.7523412   0.9205300
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9401238   0.8655695   1.0146780
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.7006335   0.5085944   0.8926725
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8798186   0.8362075   0.9234298
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8814658   0.8193859   0.9435456
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8161662   0.7730770   0.8592554
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8146333   0.7316136   0.8976530
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8301082   0.7852848   0.8749316
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                1.1572244   0.9475044   1.3669445
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.7896584   0.7311862   0.8481306
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6865048   0.5024277   0.8705819
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7326941   0.6641866   0.8012016
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9166371   0.6865914   1.1466829
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6573588   0.5764148   0.7383028
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7613448   0.6655126   0.8571769
18-21 months   ki1000108-IRC              INDIA                          0                    NA                0.7901838   0.7333039   0.8470637
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.7258487   0.6731755   0.7785219
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                0.7261897   0.6883716   0.7640079
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7204365   0.6508348   0.7900382
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8351873   0.8078826   0.8624919
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8565458   0.8062249   0.9068668
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8107903   0.7678564   0.8537243
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8209179   0.7613379   0.8804978
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.9055241   0.8576628   0.9533854
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9032588   0.8580534   0.9484642
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.8215826   0.7679400   0.8752253
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7238348   0.5997987   0.8478710
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.7636752   0.7240561   0.8032944
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8008762   0.7202929   0.8814595
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.8133760   0.7711469   0.8556051
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.6663609   0.4032959   0.9294259
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8346493   0.7959733   0.8733253
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8205756   0.7696569   0.8714943
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.7873064   0.7406998   0.8339130
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7677006   0.6864712   0.8489300
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.7574841   0.7104429   0.8045254
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8698268   0.5301839   1.2094697
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8122161   0.7649960   0.8594363
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9207585   0.6572357   1.1842813
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7260895   0.6594268   0.7927522
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4528046   0.1863650   0.7192442
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7544065   0.6670757   0.8417373
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6736221   0.5861035   0.7611406
21-24 months   ki1000108-IRC              INDIA                          0                    NA                0.6940669   0.6386290   0.7495047
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7247609   0.6673224   0.7821994
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.6384157   0.5894005   0.6874309
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.6645791   0.5988898   0.7302685
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7617038   0.7324712   0.7909363
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7688578   0.7145410   0.8231747
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.7227888   0.6821360   0.7634416
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7018019   0.6371912   0.7664126
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8037560   0.7459162   0.8615959
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7917645   0.7153959   0.8681331
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7768093   0.7164935   0.8371252
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6912802   0.5305478   0.8520127


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                3.0775986   2.9949164   3.1602807
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                3.0203213   2.7415636   3.2990789
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1094185   3.0623536   3.1564834
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                3.4261247   3.2881156   3.5641338
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0947237   2.0366412   2.1528063
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0648890   1.9235221   2.2062560
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7956732   1.7598168   1.8315297
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9931660   1.9537919   2.0325400
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2141990   1.1366726   1.2917254
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                1.1779411   1.1309380   1.2249441
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                1.4489758   1.3441442   1.5538073
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3229048   1.2864138   1.3593957
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4043728   1.3538817   1.4548638
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.2658739   1.2051613   1.3265866
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9004961   0.8320891   0.9689030
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.9148816   0.8796496   0.9501135
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.1892103   1.0637355   1.3146851
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0864385   1.0523722   1.1205048
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9815948   0.9391870   1.0240026
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0329653   0.9921998   1.0737308
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.9627471   0.9031556   1.0223387
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8540293   0.7834803   0.9245783
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                1.0100593   0.9773974   1.0427213
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2839425   1.1215190   1.4463660
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9312256   0.8944427   0.9680085
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9418485   0.9109546   0.9727425
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8739530   0.8186981   0.9292079
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7357918   0.6725047   0.7990788
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8376536   0.8054297   0.8698774
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9379347   0.8959416   0.9799278
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8794445   0.8479366   0.9109524
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7480083   0.6959380   0.8000786
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7057090   0.6416425   0.7697756
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7183112   0.6840373   0.7525850
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8152626   0.7805875   0.8499376
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8028550   0.7540631   0.8516469
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7091576   0.6473940   0.7709213
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7160839   0.6819411   0.7502266
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7554929   0.6980149   0.8129708


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1203540   -0.2881042    0.0473962
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0682682   -0.5421724    0.4056360
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0451533   -0.1856315    0.2759380
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0416080   -0.2282252    0.3114411
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.6073029    0.1357690    1.0788367
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1315152   -0.4421258    0.1790955
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.5955673   -1.0035086   -0.1876259
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2718377   -0.1719509    0.7156263
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.3014143   -0.5153322   -0.0874965
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.2133461   -0.4014764   -0.0252159
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.7866764    0.1880712    1.3852815
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0905687   -0.1767932   -0.0043442
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.3915269   -0.4903730   -0.2926807
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0782356   -0.1845882    0.0281170
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.1369765   -0.2275584    0.5015115
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0338214   -0.1711392    0.1034963
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0005477   -0.2688322    0.2677368
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0287049   -0.1738635    0.1164537
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0142971   -0.1180036    0.1465979
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.2644925   -0.5331028    0.0041178
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1288665   -0.4160806    0.1583475
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.3341197   -0.1161952    0.7844347
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1601126   -0.3638576    0.0436325
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0166969   -0.1109486    0.1443425
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1437858   -0.2754677   -0.0121039
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0331667   -0.3259897    0.3923232
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0490331   -0.1327259    0.0346597
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0353032   -0.1558126    0.0852063
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0119862   -0.0750009    0.0989733
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0655815   -0.1478839    0.0167209
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0706529   -0.2801376    0.1388318
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0222277   -0.1365316    0.0920762
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1208996   -0.2086303    0.4504295
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0374478   -0.0832632    0.1581589
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0258884   -0.0922958    0.1440726
6-9 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.0768218   -0.2060756    0.3597192
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0840693   -0.1675157    0.3356544
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2698809   -0.4889474   -0.0508143
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0975892   -0.2529424    0.0577639
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                 -0.0147560   -0.1135747    0.0840626
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0452326   -0.0549560    0.1454212
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1154590   -0.3385197    0.1076018
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0379196   -0.0186855    0.0945247
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0438131   -0.1444979    0.0568716
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0705998   -0.1899550    0.0487555
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0562714   -0.1413887    0.0288459
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0815025   -0.1430583    0.3060633
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0075389   -0.0845806    0.0996585
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1484301   -0.3989626    0.1021025
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1210624    0.0432483    0.1988764
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0919606   -0.0050343    0.1889556
9-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0583879   -0.3017143    0.1849385
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0510166   -0.1490786    0.2511119
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0278584   -0.2722589    0.2165422
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0304042   -0.1674064    0.1065980
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0279274   -0.1052330    0.0493783
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                  0.0491018   -0.0265102    0.1247137
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1802070   -0.4498530    0.0894389
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0025988   -0.0610700    0.0558723
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0076476   -0.1112860    0.0959909
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.0035999   -0.0914586    0.0986583
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.0216841   -0.3520868    0.3087187
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0406094   -0.0316636    0.1128824
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0221261   -0.1727437    0.1284915
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0691709   -0.0391362    0.1774779
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1270659   -0.1742024    0.4283342
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0389743   -0.1256668    0.0477182
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0329362   -0.1265093    0.0606369
12-15 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0945880   -0.2598692    0.4490453
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0415095   -0.2240973    0.1410783
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0261890   -0.2724381    0.3248160
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1137804   -0.0263549    0.2539157
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                 -0.0718735   -0.1580996    0.0143525
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0826912   -0.1507984   -0.0145841
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0795207   -0.4214296    0.2623882
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0391572   -0.0953973    0.0170829
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0141650   -0.1041258    0.1324557
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0433657   -0.1111035    0.0243721
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0467747   -0.0099541    0.1035035
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.1204943   -0.0333305    0.2743191
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0502363   -0.1460693    0.0455968
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0450612   -0.1944504    0.2845728
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0584064   -0.0203136    0.1371265
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0084758   -0.0940563    0.0771048
15-18 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0043516   -0.1568968    0.1481935
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0810611   -0.0769801    0.2391023
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0924704   -0.2188131    0.4037538
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1456955    0.0208982    0.2704929
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.0772582   -0.1607463    0.0062298
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0769927   -0.1484744   -0.0055110
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0175777   -0.0398898    0.0750452
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0127734   -0.1213306    0.0957839
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0209768   -0.0443158    0.0862694
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0234842   -0.0481594    0.0951279
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0749535   -0.2105063    0.0605993
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0230598   -0.0692430    0.1153626
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2394903   -0.4483742   -0.0306064
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0016471   -0.0743580    0.0776522
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0015329   -0.0953225    0.0922567
18-21 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.3271162    0.1126596    0.5415728
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1031536   -0.2961598    0.0898526
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1839430   -0.0560514    0.4239375
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1039860   -0.0218181    0.2297901
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0643351   -0.1420701    0.0133999
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0057532   -0.0856699    0.0741634
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0213585   -0.0359006    0.0786177
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0101275   -0.0636961    0.0839512
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0022653   -0.0680703    0.0635398
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0977478   -0.2334724    0.0379768
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0372010   -0.0522435    0.1266455
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1470151   -0.4133402    0.1193100
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0140737   -0.0783702    0.0502227
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0196058   -0.1125960    0.0733844
21-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.1123427   -0.2305424    0.4552277
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1085424   -0.1595250    0.3766097
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2732849   -0.5479485    0.0013787
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0807844   -0.2045575    0.0429886
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0306940   -0.0479438    0.1093319
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0261634   -0.0561162    0.1084430
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0071540   -0.0545131    0.0688212
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0209869   -0.0977168    0.0557430
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0119915   -0.1082940    0.0843111
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0855291   -0.2566607    0.0856025


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0234709   -0.0642455    0.0173037
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0083002   -0.0325232    0.0159228
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0077130   -0.0659917    0.0814176
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0208024   -0.0197386    0.0613434
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0181666    0.0003072    0.0360261
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0063006   -0.0448127    0.0322115
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0252758   -0.0558558    0.0053041
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0654298   -0.1999334    0.3307930
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.1743490   -0.2997524   -0.0489457
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0679157   -0.1318418   -0.0039896
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2798992    0.0291070    0.5306914
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0240631   -0.0468688   -0.0012574
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.1459293   -0.1839836   -0.1078751
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0327879   -0.0768398    0.0112639
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0286695   -0.0494675    0.1068065
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0091272   -0.0393877    0.0211332
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0032735   -0.0149405    0.0214874
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0140326   -0.0634696    0.0354044
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0026909   -0.0231003    0.0284822
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0089155   -0.0196340    0.0018030
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0144672   -0.0480216    0.0190872
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0120458   -0.0058723    0.0299640
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0751096   -0.1829853    0.0327660
3-6 months     ki1000108-IRC              INDIA                          0                    NA                 0.0133252   -0.0581738    0.0848243
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0489202   -0.0937174   -0.0041229
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0437515   -0.0896260    0.1771291
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0124193   -0.0338902    0.0090516
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0060180   -0.0243158    0.0122798
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0051175   -0.0235338    0.0337688
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0279561   -0.0629116    0.0069994
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0171041   -0.0514171    0.0172089
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0021758   -0.0268939    0.0225424
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0097983   -0.0115069    0.0311036
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0144003   -0.0260897    0.0548904
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0085800   -0.0155220    0.0326819
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0045434   -0.0163512    0.0072644
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0077081   -0.0201167    0.0355330
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0197130   -0.0362604   -0.0031656
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0456271   -0.1254064    0.0341521
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0090945   -0.0641383    0.0459494
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0191800   -0.0169055    0.0552654
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0544652   -0.1418371    0.0329066
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0081151   -0.0058585    0.0220887
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061831   -0.0204857    0.0081196
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0217158   -0.0563344    0.0129027
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0218400   -0.0574841    0.0138041
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0067062   -0.0207784    0.0341909
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0065190   -0.0154442    0.0284821
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0103082   -0.0299096    0.0092932
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0368386    0.0098954    0.0637818
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0179881   -0.0019361    0.0379123
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0013410   -0.0117396    0.0090576
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0023430   -0.0193920    0.0240780
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0066884   -0.0232548    0.0098779
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0187797   -0.0898094    0.0522500
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0149949   -0.0578658    0.0278760
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0161250   -0.0099748    0.0422248
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0891364   -0.1994491    0.0211764
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0013102   -0.0159575    0.0133371
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0014709   -0.0129970    0.0159387
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0004682   -0.0280703    0.0271339
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0006195   -0.0100749    0.0088358
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0192985   -0.0105840    0.0491810
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0023883   -0.0257265    0.0209498
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0170041   -0.0071698    0.0411779
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0037522   -0.0210706    0.0135662
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0162713   -0.0449707    0.0124281
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0065991   -0.0251622    0.0119641
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0038004   -0.0106483    0.0182492
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0000008   -0.0211066    0.0211051
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0047348   -0.0215979    0.0121283
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0655414   -0.0094572    0.1405400
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0358580   -0.0841934    0.0124775
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0297750   -0.0547602   -0.0047899
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0094132   -0.1470766    0.1282501
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0094868   -0.0246882    0.0057146
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0041988   -0.0111437    0.0195412
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0148772   -0.0363623    0.0066078
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0194537   -0.0040071    0.0429146
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0203400   -0.0037001    0.0443800
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0142778   -0.0355262    0.0069707
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0095640   -0.0279390    0.0088111
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0207548   -0.0054680    0.0469775
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0104425   -0.0286932    0.0078082
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0001839   -0.0066305    0.0062628
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0143609   -0.0034895    0.0322113
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004696   -0.0188103    0.0178711
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0772638    0.0102080    0.1443195
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0443704   -0.0913202    0.0025793
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0319416   -0.0600035   -0.0038798
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0029130   -0.0115920    0.0174181
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0005236   -0.0151083    0.0140610
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0067117   -0.0132165    0.0266399
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0098278   -0.0186933    0.0383489
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0049437   -0.0246127    0.0147254
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0000090   -0.0204935    0.0205114
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0240479   -0.0443610   -0.0037348
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0011085   -0.0266106    0.0243935
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0021135   -0.0166930    0.0209201
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0113357    0.0002163    0.0224552
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0074774   -0.0273765    0.0124216
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0110097   -0.0103468    0.0323662
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0483502   -0.0198209    0.1165213
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0303816   -0.0734326    0.0126694
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0078786   -0.0387113    0.0229542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0041504   -0.0099751    0.0182759
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0044723   -0.0179444    0.0268889
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0016285   -0.0288247    0.0255676
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0187276   -0.0415652    0.0041100
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0057430   -0.0160299    0.0275160
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0172241   -0.0384920    0.0040437
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0090980   -0.0312121    0.0130161
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0039499   -0.0226338    0.0147340
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0035664   -0.0076770    0.0148099
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0272789   -0.0031031    0.0576608
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0071567   -0.0206903    0.0063768
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0452489   -0.1109191    0.0204214
21-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0143460   -0.0293036    0.0579955
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0109252   -0.0226406    0.0444911
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0014353   -0.0137283    0.0165988
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0067049   -0.0300877    0.0166779
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0047248   -0.0413406    0.0318909
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0213165   -0.0502074    0.0075744
