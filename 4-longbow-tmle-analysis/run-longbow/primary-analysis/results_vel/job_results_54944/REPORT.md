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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               187    243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                56    243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               156    168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                12    168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0               125    183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                58    183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               131    156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                25    156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0               255    265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1                10    265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               185    211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                26    211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               215    228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    228  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                35     88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                53     88  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          0               158    377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          1               219    377  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       0               203    303  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       1               100    303  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       0                48     80  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       1                32     80  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               473    640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               167    640  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         0               802   1276  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         1               474   1276  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0               298    509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               211    509  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     0                34     43  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     1                 9     43  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           0                29     29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           1                 0     29  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               179    231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                52    231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               193    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                15    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0               153    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                77    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               186    233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                47    233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0               258    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1                 9    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               214    243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                29    243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               226    239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    239  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               145    307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               162    307  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          0               175    397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1               222    397  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       0               186    280  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       1                94    280  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       0                93    156  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       1                63    156  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               445    598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               153    598  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1402   1661  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               259   1661  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         0               936   1397  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         1               461   1397  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               270    469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               199    469  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     0               153    185  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     1                32    185  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           0               210    214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           1                 4    214  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               173    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                51    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               183    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                15    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0               153    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                77    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               184    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                46    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0               235    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1                10    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               203    231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                28    231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               212    225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    225  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               153    312  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               159    312  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          0               180    407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1               227    407  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       0               197    304  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       1               107    304  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       0                88    143  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       1                55    143  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               425    565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               140    565  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1274   1488  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               214   1488  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         0               637    902  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         1               265    902  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0               196    200  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                 4    200  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0               279    481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               202    481  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     0               154    177  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     1                23    177  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           0               210    214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           1                 4    214  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               173    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                52    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               179    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                15    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0               151    227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                76    227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               183    229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                46    229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0               225    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1                10    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               205    233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                28    233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               211    224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    224  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               151    313  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               162    313  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          0               178    400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1               222    400  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       0               214    326  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       1               112    326  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       0                83    140  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       1                57    140  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               424    566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               142    566  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               922   1081  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               159   1081  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         0               622    876  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         1               254    876  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0               170    175  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 5    175  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0               273    469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               196    469  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     0               135    160  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     1                25    160  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           0               208    212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           1                 4    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               161    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                51    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               170    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                14    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0               151    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                75    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               184    230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                46    230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0               215    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1                 9    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               201    228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                27    228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               213    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    226  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               151    324  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               173    324  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          0               173    390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1               217    390  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       0               189    297  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       1               108    297  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       0                54     91  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       1                37     91  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               400    532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               132    532  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               685    791  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               106    791  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         0               892   1303  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         1               411   1303  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                84     88  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 4     88  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0               276    469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               193    469  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     0               136    160  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     1                24    160  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           0               195    199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           1                 4    199  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               163    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                49    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               162    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                13    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               151    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                75    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               181    227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                46    227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0               204    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1                 9    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               201    225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                24    225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               205    217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                12    217  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               146    317  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               171    317  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          0               171    382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1               211    382  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       0               178    278  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       1               100    278  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               395    528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1               133    528  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               574    664  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                90    664  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         0               912   1311  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         1               399   1311  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0               287    480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               193    480  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     0               139    163  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     1                24    163  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           0               186    189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           1                 3    189  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               161    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                48    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               154    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                13    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               150    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                76    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               181    227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                46    227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0               195    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1                 7    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               208    233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                25    233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               193    204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    204  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               139    302  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               163    302  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          0               170    379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1               209    379  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       0               161    254  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       1                93    254  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               407    541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               134    541  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 8      9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      9  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         0               894   1285  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         1               391   1285  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0               260    445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               185    445  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     0               137    165  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     1                28    165  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           0               180    183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           1                 3    183  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               158    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                49    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               152    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                13    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               150    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                76    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               181    227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                46    227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0               183    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1                 6    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               210    235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                25    235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               193    204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    204  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               143    304  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               161    304  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          0               173    389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1               216    389  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       0                63    106  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       1                43    106  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               354    471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               117    471  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         0               803   1158  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         1               355   1158  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0               210    342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               132    342  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     0               112    133  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     1                21    133  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           0                37     38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           1                 1     38  y_rate_haz       


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
![](/tmp/01c4af61-d8ba-4df5-935e-f5ddf2edad4e/c56ac172-f00f-4d79-943c-cba4af174dfa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/01c4af61-d8ba-4df5-935e-f5ddf2edad4e/c56ac172-f00f-4d79-943c-cba4af174dfa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/01c4af61-d8ba-4df5-935e-f5ddf2edad4e/c56ac172-f00f-4d79-943c-cba4af174dfa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1138536   -0.1501619   -0.0775454
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1515763   -0.2330259   -0.0701267
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1402367    0.0800089    0.2004644
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0149011   -0.1338889    0.1636910
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0598435   -0.1175537   -0.0021334
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0539162   -0.1532885    0.0454562
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0476452   -0.0005714    0.0958619
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0971935   -0.0217543    0.2161413
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.2698854   -0.3041516   -0.2356193
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1202939   -0.3549996    0.1144117
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1688188   -0.2212833   -0.1163544
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2832703   -0.4222683   -0.1442723
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1289888   -0.1684531   -0.0895246
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2125463   -0.3783612   -0.0467313
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2288244   -0.4008191   -0.0568297
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0027166   -0.1484943    0.1430611
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.1529889   -0.2302323   -0.0757454
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.3311934   -0.4069350   -0.2554518
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.1773998   -0.2231276   -0.1316719
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.2935004   -0.3805344   -0.2064665
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.3566887   -0.5108137   -0.2025637
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0354525   -0.2314937    0.3023987
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1765432   -0.1961061   -0.1569803
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2199970   -0.2568232   -0.1831709
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.2039050   -0.2310928   -0.1767171
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.4133608   -0.4559207   -0.3708008
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0134685   -0.0453429    0.0184058
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0601320   -0.1017233   -0.0185407
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0062844   -0.0802554    0.0676866
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0823104   -0.1062131    0.2708338
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0164326   -0.0427415    0.0098763
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0340830   -0.0873530    0.0191871
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0597132    0.0211894    0.0982369
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1418650    0.0325507    0.2511794
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0304769   -0.0635410    0.0025872
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0480799   -0.1089947    0.0128349
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0228653   -0.0534126    0.0076820
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0144001   -0.0687369    0.0399366
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0306921   -0.0011647    0.0625488
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1160392   -0.2478917    0.0158132
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0006373   -0.0405634    0.0392888
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0493948   -0.1694751    0.0706855
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0787994   -0.1117010   -0.0458978
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1113265   -0.0191471    0.2418001
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0589738   -0.1305066    0.0125590
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1261815   -0.1904475   -0.0619155
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0499976   -0.0937724   -0.0062228
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0520950   -0.0933702   -0.0108198
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0886738    0.0575270    0.1198206
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.0205347   -0.0323013    0.0733706
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0228031   -0.0427863    0.0883926
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0437216   -0.1069542    0.1943973
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0240655   -0.0415885   -0.0065426
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0328665   -0.0674275    0.0016946
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0813860   -0.0986928   -0.0640792
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1032896   -0.1562943   -0.0502849
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0181153   -0.0397317    0.0035011
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0161960   -0.0506756    0.0182836
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1511393   -0.1735144   -0.1287643
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1800674   -0.2123718   -0.1477630
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0030152   -0.0379784    0.0319480
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0176741   -0.1066732    0.0713249
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0682963   -0.0875627   -0.0490298
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0796036   -0.1257305   -0.0334767
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0074617   -0.0289251    0.0438486
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1234040   -0.0130492    0.2598573
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0777147   -0.1032048   -0.0522246
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0664171   -0.1127612   -0.0200730
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0379508   -0.0588388   -0.0170628
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0217335   -0.0701522    0.0266851
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0315779   -0.0561901   -0.0069658
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0852615   -0.2461350    0.0756119
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0188177   -0.0483052    0.0106697
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0015860   -0.0848852    0.0880572
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0888060   -0.1236873   -0.0539248
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1255200   -0.2176456   -0.0333945
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0650026   -0.1172688   -0.0127365
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1049124   -0.1498788   -0.0599460
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0088445   -0.0425409    0.0248518
6-9 months     ki1000108-IRC              INDIA                          1                    NA                -0.0218432   -0.0510785    0.0073922
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0924404   -0.1173536   -0.0675273
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0712005   -0.1068182   -0.0355827
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0453030   -0.0105875    0.1011934
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0208159   -0.1009777    0.0593459
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0647614   -0.0776235   -0.0518994
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0487222   -0.0689584   -0.0284861
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0492695   -0.0667691   -0.0317699
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0699070   -0.1100623   -0.0297517
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0013935   -0.0271044    0.0243174
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0355216   -0.0806669    0.0096237
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0314413   -0.0539723   -0.0089104
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0600988   -0.0873445   -0.0328531
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0532552   -0.0808898   -0.0256206
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0070686   -0.0774382    0.0915753
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0906832   -0.1095659   -0.0718006
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0838544   -0.1164085   -0.0513003
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0129087   -0.0194507    0.0452682
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0933494   -0.1906501    0.0039513
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1030715   -0.1228664   -0.0832766
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0586090   -0.0847598   -0.0324582
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0707172   -0.0899342   -0.0515002
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0331879   -0.0661912   -0.0001846
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0418888   -0.0638619   -0.0199157
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0198701   -0.1730818    0.1333417
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0862784   -0.1149305   -0.0576263
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0551150   -0.1325551    0.0223250
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1532110   -0.1885816   -0.1178403
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1828525   -0.2505989   -0.1151062
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1154071   -0.1620569   -0.0687573
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1290102   -0.1637105   -0.0943099
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0272328   -0.0510999   -0.0033658
9-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0418940   -0.0655096   -0.0182784
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.1079639   -0.1256742   -0.0902535
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.0898792   -0.1165375   -0.0632210
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0281085   -0.0343718    0.0905888
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0675800   -0.1617402    0.0265801
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0632451   -0.0761372   -0.0503529
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0609725   -0.0817250   -0.0402200
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0672486   -0.0826462   -0.0518510
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0627744   -0.1036541   -0.0218947
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.1017350   -0.1227717   -0.0806982
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0963809   -0.1312357   -0.0615261
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0605030   -0.0770631   -0.0439429
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0628884   -0.1950609    0.0692841
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0867142   -0.1043467   -0.0690818
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0715796   -0.0951578   -0.0480014
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0884641   -0.1159879   -0.0609404
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0733771   -0.1319095   -0.0148446
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0620683   -0.0802506   -0.0438859
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0368830   -0.0703320   -0.0034341
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0031226   -0.0266288    0.0203837
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0421395   -0.1349551    0.0506762
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0495377   -0.0677349   -0.0313406
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0687842   -0.0963289   -0.0412396
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0550629   -0.0726300   -0.0374958
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0631422   -0.0959858   -0.0302986
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0666591   -0.0844106   -0.0489077
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0341558   -0.1673143    0.0990027
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0593750   -0.0836972   -0.0350528
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0579708   -0.1240299    0.0080883
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0689514   -0.0948386   -0.0430642
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1575428   -0.2868585   -0.0282270
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0948893   -0.1301612   -0.0596174
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0496657   -0.0927992   -0.0065322
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0234356   -0.0526760    0.0058049
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0574374   -0.0754955   -0.0393793
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0114044   -0.0045872    0.0273959
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0209034   -0.0432599    0.0014530
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0950128    0.0069954    0.1830303
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0609277   -0.0471724    0.1690278
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0378682   -0.0495809   -0.0261556
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0494686   -0.0689817   -0.0299555
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0662086   -0.0815596   -0.0508577
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0570559   -0.0993128   -0.0147990
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0468869   -0.0615096   -0.0322643
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0628241   -0.0855213   -0.0401269
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0737670   -0.0888721   -0.0586618
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0551430   -0.0702099   -0.0400762
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0684882   -0.0918353   -0.0451412
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0562612   -0.1155370    0.0030146
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0405947   -0.0568323   -0.0243572
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0561778   -0.0898173   -0.0225382
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0168492   -0.0383788    0.0046804
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0474400   -0.1441608    0.0492808
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0422836   -0.0579087   -0.0266585
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0233773   -0.0460653   -0.0006893
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0515127   -0.0693685   -0.0336570
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0635662   -0.0888923   -0.0382400
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0360064   -0.0519177   -0.0200951
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0371926   -0.1031254    0.0287402
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0341303   -0.0544538   -0.0138068
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0204043   -0.0247433    0.0655519
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0846043   -0.1074493   -0.0617593
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0198273   -0.1245686    0.0849140
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0971953   -0.1255148   -0.0688757
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0449157   -0.0811626   -0.0086688
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0203155   -0.0438003    0.0031692
15-18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0515293   -0.0699456   -0.0331130
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0156658   -0.0295232   -0.0018084
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0421057   -0.0633027   -0.0209087
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0398646   -0.0497576   -0.0299715
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0292356   -0.0478547   -0.0106166
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0187905   -0.0355042   -0.0020769
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0197797   -0.0574215    0.0178621
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0362269   -0.0507884   -0.0216653
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0254610   -0.0447337   -0.0061884
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0716022   -0.0875948   -0.0556096
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0651274   -0.0857845   -0.0444703
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0602297   -0.0816172   -0.0388423
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0773527   -0.1183662   -0.0363393
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0155004   -0.0283795   -0.0026213
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0151782   -0.0424481    0.0120918
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0124291   -0.0382174    0.0133592
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1121817   -0.1864916   -0.0378718
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0059811   -0.0079091    0.0198712
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0019960   -0.0181652    0.0221572
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0293705   -0.0442670   -0.0144740
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0232954   -0.0517980    0.0052072
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0119659   -0.0273213    0.0033895
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0991854    0.0364689    0.1619019
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0293362   -0.0495164   -0.0091559
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0609000   -0.1237387    0.0019386
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0318784   -0.0550521   -0.0087047
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0156569   -0.0496908    0.0810046
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0589735   -0.0873515   -0.0305954
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0229070   -0.0568370    0.0110230
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0270812   -0.0469195   -0.0072429
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0530851   -0.0710760   -0.0350942
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0357949   -0.0493327   -0.0222570
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0289347   -0.0521126   -0.0057568
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0125037   -0.0217774   -0.0032300
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0047602   -0.0219878    0.0124674
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0251493   -0.0400264   -0.0102722
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0198445   -0.0407487    0.0010598
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0136373   -0.0038271    0.0311016
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0148905   -0.0010310    0.0308121
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0005100   -0.0190361    0.0180161
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0459817   -0.0868685   -0.0050949
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0229411    0.0087186    0.0371636
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0413758    0.0156028    0.0671487
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0214743    0.0057733    0.0371753
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0041905   -0.0901809    0.0817999
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0337257    0.0196781    0.0477733
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0187387    0.0012527    0.0362248
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0068835   -0.0089264    0.0226934
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0020545   -0.0282150    0.0241059
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0558546    0.0404933    0.0712159
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0911279   -0.0199569    0.2022127
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0364974    0.0209467    0.0520482
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1051383    0.0089648    0.2013119
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0127890   -0.0103734    0.0359515
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0284437   -0.0193720    0.0762594
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0406188    0.0107047    0.0705329
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0051362   -0.0249711    0.0352435
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0200840   -0.0388773   -0.0012906
21-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0081083   -0.0267349    0.0105183
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0125757   -0.0282498    0.0030984
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                 0.0010788   -0.0200323    0.0221899
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0448594    0.0350200    0.0546988
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0500306    0.0318353    0.0682258
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0154079    0.0019263    0.0288894
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0153079   -0.0063457    0.0369614
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0525712    0.0325065    0.0726360
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0411379    0.0166825    0.0655932
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0230778    0.0029438    0.0432119
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0017367   -0.0520107    0.0485374


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1788096   -0.2278601   -0.1297591
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2160892   -0.2586792   -0.1734992
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.2215495   -0.3646573   -0.0784416
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2819592   -0.3057954   -0.2581230
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0122587   -0.0591325    0.0836499
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0663303    0.0389725    0.0936881
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0366027   -0.0294732    0.1026785
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0845402   -0.1011812   -0.0678992
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0167995   -0.0352345    0.0016355
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0832899   -0.1175028   -0.0490769
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0848755   -0.1055404   -0.0642105
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0176516   -0.0290488    0.0643521
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0525643   -0.0685949   -0.0365337
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0132203   -0.0354303    0.0089898
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0518380   -0.0789102   -0.0247658
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1184890   -0.1472404   -0.0897376
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1011889   -0.1159053   -0.0864725
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0111211   -0.0642819    0.0420397
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0656608   -0.0799392   -0.0513823
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1006730   -0.1184583   -0.0828876
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0605712   -0.0770955   -0.0440468
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0900457   -0.1145732   -0.0655181
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0709565   -0.0992698   -0.0426432
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0004721   -0.0133950    0.0124507
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0801932    0.0138774    0.1465091
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0647004   -0.0791352   -0.0502655
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0514499   -0.0636763   -0.0392235
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0608799   -0.0824031   -0.0393566
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0674551   -0.0910572   -0.0438530
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0192071   -0.0344910   -0.0039232
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0323681   -0.0439942   -0.0207420
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0627334   -0.0821141   -0.0433527
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0420349   -0.0645042   -0.0195656
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0223318   -0.0343835   -0.0102802
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0064943   -0.0234244    0.0104357
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0184186   -0.0026901    0.0395272
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0152315    0.0038088    0.0266543
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0156162   -0.0032678    0.0345001


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0377226   -0.1270183    0.0515730
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1253356   -0.2850690    0.0343978
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0059274   -0.1091528    0.1210076
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0495483   -0.0797158    0.1788124
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1495915   -0.0881639    0.3873470
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1144515   -0.2631795    0.0342765
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0835575   -0.2548404    0.0877255
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2261078   -0.0083070    0.4605227
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.1782045   -0.2859791   -0.0704298
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1161007   -0.2144444   -0.0177569
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.3921412    0.0857724    0.6985101
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0434538   -0.0852183   -0.0016893
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.2094558   -0.2596426   -0.1592690
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0466635   -0.0990047    0.0056778
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0885947   -0.1139215    0.2911109
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0176504   -0.0772311    0.0419304
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0821519   -0.0339842    0.1982879
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0176030   -0.0872143    0.0520083
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0084652   -0.0540663    0.0709967
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.1467313   -0.2823776   -0.0110850
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0487575   -0.1755566    0.0780416
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1901259    0.0557251    0.3245267
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0672077   -0.1635017    0.0290863
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0020974   -0.0621974    0.0580026
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0681392   -0.1299148   -0.0063635
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0209184   -0.1424453    0.1842821
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0088009   -0.0472026    0.0296008
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0219036   -0.0777547    0.0339475
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0019193   -0.0387029    0.0425415
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0289281   -0.0688056    0.0109494
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0146589   -0.1093738    0.0800560
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0113074   -0.0613348    0.0387201
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1159423   -0.0263305    0.2582150
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0112977   -0.0418566    0.0644520
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0162173   -0.0362980    0.0687325
6-9 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0536836   -0.2165481    0.1091809
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0204037   -0.0711240    0.1119315
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0367140   -0.1353690    0.0619410
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0399097   -0.1088827    0.0290633
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                 -0.0129986   -0.0585443    0.0325471
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0212400   -0.0223329    0.0648129
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0661189   -0.1649037    0.0326659
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0160392   -0.0077950    0.0398734
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0206375   -0.0644744    0.0231994
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0341281   -0.0864735    0.0182173
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0286575   -0.0638901    0.0065751
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0603238   -0.0276891    0.1483367
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0068288   -0.0307832    0.0444409
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1062582   -0.2090499   -0.0034664
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0444625    0.0112704    0.0776546
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0375293   -0.0006456    0.0757043
9-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0220187   -0.1333054    0.1773429
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0311634   -0.0516960    0.1140227
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0296415   -0.1070153    0.0477323
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0136031   -0.0717348    0.0445286
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0146612   -0.0480677    0.0187453
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                  0.0180846   -0.0135329    0.0497021
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0956885   -0.2091303    0.0177532
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0022726   -0.0219070    0.0264521
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0044742   -0.0392060    0.0481545
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.0053541   -0.0356866    0.0463947
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.0023854   -0.1355912    0.1308205
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0151347   -0.0151239    0.0453932
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0150871   -0.0498650    0.0800392
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0251852   -0.0129462    0.0633166
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0390169   -0.1352922    0.0572585
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0192465   -0.0522999    0.0138069
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0080793   -0.0454642    0.0293056
12-15 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0325033   -0.1018332    0.1668398
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0014042   -0.0690830    0.0718914
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0885914   -0.2209727    0.0437899
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0452236   -0.0109162    0.1013634
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                 -0.0340018   -0.0680807    0.0000770
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0323078   -0.0598381   -0.0047775
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0340851   -0.1741704    0.1060003
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0116004   -0.0342119    0.0110111
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0091527   -0.0358513    0.0541567
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0159371   -0.0430191    0.0111448
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0186239   -0.0025871    0.0398350
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0122270   -0.0515753    0.0760292
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0155830   -0.0529088    0.0217428
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0305908   -0.1297145    0.0685329
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0189063   -0.0086751    0.0464876
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0120534   -0.0431222    0.0190153
15-18 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0011862   -0.0690117    0.0666393
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0545346    0.0048688    0.1042004
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0647770   -0.0426842    0.1722382
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0522796    0.0064992    0.0980600
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.0312138   -0.0610464   -0.0013811
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0264399   -0.0517803   -0.0010995
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0106289   -0.0104325    0.0316904
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0009891   -0.0421029    0.0401247
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0107658   -0.0133136    0.0348453
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0064748   -0.0196474    0.0325970
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0171230   -0.0632649    0.0290189
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0003222   -0.0298644    0.0305089
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0997526   -0.1795134   -0.0199918
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0039851   -0.0285130    0.0205429
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0060751   -0.0261007    0.0382509
18-21 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.1111513    0.0465824    0.1757203
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0315639   -0.0976315    0.0345037
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0475353   -0.0214994    0.1165701
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0360665   -0.0082219    0.0803548
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0260039   -0.0528847    0.0008769
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0068602   -0.0201745    0.0338948
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0077435   -0.0118284    0.0273154
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0053048   -0.0204604    0.0310700
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0012533   -0.0229322    0.0254387
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0454717   -0.0904767   -0.0004668
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0184347   -0.0110442    0.0479136
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0256648   -0.1130107    0.0616811
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0149870   -0.0374531    0.0074791
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0089380   -0.0390805    0.0212044
21-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0352733   -0.0768686    0.1474152
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0686409   -0.0287529    0.1660347
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0156547   -0.0375929    0.0689022
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0354826   -0.0781883    0.0072232
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0119757   -0.0138797    0.0378311
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0136545   -0.0128129    0.0401219
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0051712   -0.0155202    0.0258625
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0001000   -0.0256992    0.0254992
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0114334   -0.0430781    0.0202114
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0248145   -0.0792938    0.0296648


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0083891   -0.0294924    0.0127143
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0061653   -0.0190122    0.0066817
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0008052   -0.0355795    0.0371900
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0071174   -0.0131853    0.0274201
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0070848   -0.0021165    0.0162861
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0099908   -0.0284455    0.0084640
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0085978   -0.0226337    0.0054382
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1409858   -0.0021478    0.2841194
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.1028382   -0.1663138   -0.0393627
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0386894   -0.0720638   -0.0053151
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1351393    0.0077551    0.2625235
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0114970   -0.0225427   -0.0004514
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0780543   -0.0975400   -0.0585685
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0182995   -0.0399868    0.0033878
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0185431   -0.0252231    0.0623092
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0060082   -0.0200377    0.0080214
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0000160   -0.0082867    0.0083187
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0055633   -0.0285238    0.0173972
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0002132   -0.0126734    0.0122471
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0049460   -0.0105168    0.0006248
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0042972   -0.0204322    0.0118378
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0082546   -0.0004840    0.0169931
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0389877   -0.0902309    0.0122555
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0018942   -0.0355418    0.0317533
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0223435   -0.0438474   -0.0008396
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0137995   -0.0465830    0.0741821
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0028969   -0.0128307    0.0070368
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0031542   -0.0116207    0.0053123
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0013158   -0.0120972    0.0147289
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0102584   -0.0273610    0.0068443
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0055654   -0.0211412    0.0100104
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0017269   -0.0120398    0.0085861
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0013216   -0.0087548    0.0113981
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0073792   -0.0106028    0.0253611
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0033912   -0.0070020    0.0137845
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0020005   -0.0073800    0.0033790
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0010350   -0.0107174    0.0127873
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0046038   -0.0105003    0.0012927
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0182872   -0.0535032    0.0169287
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0074231   -0.0328548    0.0180085
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0075650   -0.0083803    0.0235102
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0276513   -0.0665275    0.0112248
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0033351   -0.0025798    0.0092499
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032948   -0.0095987    0.0030091
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0118267   -0.0271362    0.0034827
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0124518   -0.0271218    0.0022181
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0014172   -0.0111507    0.0139851
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0034779   -0.0055777    0.0125335
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0047303   -0.0126451    0.0031845
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0118316    0.0004613    0.0232018
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0084207    0.0001733    0.0166681
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0000373   -0.0052232    0.0051486
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0014163   -0.0076182    0.0104508
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017551   -0.0083340    0.0048238
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0030819   -0.0332052    0.0270414
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0088985   -0.0274388    0.0096418
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0067750   -0.0044003    0.0179503
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0392296   -0.0861406    0.0076815
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0001980   -0.0057979    0.0061940
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0015878   -0.0044452    0.0076208
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0010620   -0.0106443    0.0127683
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0000682   -0.0038745    0.0037382
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0068903   -0.0054474    0.0192281
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0015815   -0.0109785    0.0078154
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0063560   -0.0029223    0.0156342
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0000796   -0.0070458    0.0072050
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0069846   -0.0180520    0.0040827
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0023920   -0.0098804    0.0050963
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0013059   -0.0041561    0.0067680
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0001991   -0.0080767    0.0084749
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004049   -0.0064957    0.0056858
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0239328   -0.0061415    0.0540070
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0220163   -0.0409430   -0.0030897
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0118765   -0.0219635   -0.0017895
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0148196   -0.0714365    0.0417973
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0030425   -0.0086480    0.0025630
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0015083   -0.0044339    0.0074504
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0045629   -0.0131338    0.0040079
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0070420   -0.0017514    0.0158355
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0076084   -0.0018496    0.0170663
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0051996   -0.0135634    0.0031643
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0034930   -0.0107643    0.0037783
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0042801   -0.0048457    0.0134059
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0034218   -0.0097331    0.0028894
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0000501   -0.0029162    0.0028159
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0055827   -0.0005747    0.0117401
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0010299   -0.0078043    0.0057445
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0297402    0.0048715    0.0546089
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0182011   -0.0348740   -0.0015283
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0099892   -0.0193755   -0.0006028
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0022208   -0.0030616    0.0075033
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004165   -0.0059522    0.0051192
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0038588   -0.0034803    0.0111979
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0026446   -0.0077724    0.0130616
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0025037   -0.0095535    0.0045462
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0000215   -0.0069018    0.0068589
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0079299   -0.0152437   -0.0006160
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0002070   -0.0086078    0.0081937
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0012652   -0.0049716    0.0075020
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0038518    0.0002594    0.0074442
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0028303   -0.0097494    0.0040887
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036752   -0.0038876    0.0112379
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0169385   -0.0072005    0.0410776
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0130004   -0.0279119    0.0019111
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0000726   -0.0109422    0.0110873
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0015638   -0.0032541    0.0063817
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0028175   -0.0050167    0.0106517
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0019554   -0.0082812    0.0121919
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0059844   -0.0138536    0.0018849
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0026771   -0.0043239    0.0096781
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0049873   -0.0121240    0.0021495
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0039371   -0.0115519    0.0036777
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0014287   -0.0075248    0.0046674
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0011198   -0.0025484    0.0047880
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0073747   -0.0022120    0.0169614
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0039493   -0.0086833    0.0007848
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0222002   -0.0450573    0.0006568
21-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0061758   -0.0082746    0.0206262
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0060562   -0.0053356    0.0174479
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0013748   -0.0037570    0.0065066
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0001763   -0.0080391    0.0076865
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0044443   -0.0167181    0.0078295
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0074617   -0.0167341    0.0018107
