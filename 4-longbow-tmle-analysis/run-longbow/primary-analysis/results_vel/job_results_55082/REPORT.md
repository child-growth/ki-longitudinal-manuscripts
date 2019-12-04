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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
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

agecat         studyid                    country                        exclfeed3    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ----------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               155     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                84     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                63     195  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               132     195  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          1               113     213  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          0               100     213  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                68     224  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               156     224  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           1                62     279  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           0               217     279  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                24     261  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               237     261  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                43     205  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               162     205  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          1                 0      10  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          0                10      10  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       1                32      32  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       0                 0      32  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               413     435  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                22     435  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               449     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               191     640  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         1              1263    1439  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         0               176    1439  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               378     455  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                77     455  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             10913   12098  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              1185   12098  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               141     157  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                16     157  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               147     226  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                79     226  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                60     186  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               126     186  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          1               109     206  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          0                97     206  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                69     226  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               157     226  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           1                61     264  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           0               203     264  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     234  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               212     234  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                45     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               163     208  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          1                 0      10  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          0                10      10  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       1                30      30  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       0                 0      30  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1               358     376  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                18     376  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               426     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               175     601  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         1              1129    1281  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         0               152    1281  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               351     420  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                69     420  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              6539    7170  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               631    7170  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                20      21  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 1      21  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1               140     217  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                77     217  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                58     177  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               119     177  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          1               106     205  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          0                99     205  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                68     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               154     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           1                57     242  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           0               185     242  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               200     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                42     193  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               151     193  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 9       9  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       9  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          1                 0      10  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          0                10      10  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       1                36      36  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       0                 0      36  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1               321     336  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                15     336  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               406     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               170     576  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         1               687     770  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         0                83     770  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               312     374  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                62     374  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                17      18  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 1      18  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               142     218  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                76     218  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                58     175  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               117     175  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          1               102     201  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          0                99     201  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                67     221  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               154     221  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           1                55     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           0               178     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                23     223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               200     223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                40     192  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               152     192  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 8       8  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       8  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          1                 0      10  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          0                10      10  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       1                36      36  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       0                 0      36  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1               344     357  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                13     357  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               401     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               168     569  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         1               665     747  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         0                82     747  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               294     350  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                56     350  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                86      96  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                10      96  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1               136     206  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     206  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                55     165  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               110     165  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          1               101     200  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          0                99     200  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                67     222  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               155     222  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           1                51     222  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           0               171     222  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                21     219  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               198     219  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                41     195  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               154     195  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 9       9  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       9  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          1                 0      10  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          0                10      10  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       1                29      29  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       0                 0      29  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1               345     356  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                11     356  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               379     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               158     537  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         1              1030    1159  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         0               129    1159  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               303     358  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                55     358  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                98     108  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                10     108  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1               136     206  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     206  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                53     157  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               104     157  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          1               101     201  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          0               100     201  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                66     219  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               153     219  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           1                50     211  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           0               161     211  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                20     218  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               198     218  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                39     190  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               151     190  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 9       9  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       9  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          1                 0      10  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          0                10      10  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       1                25      25  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       0                 0      25  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1               337     350  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                13     350  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1               378     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               155     533  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         1              1032    1162  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         0               130    1162  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               316     377  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                61     377  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                96     109  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                13     109  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1               132     203  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                71     203  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                52     150  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                98     150  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          1               101     201  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          0               100     201  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                66     219  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               153     219  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           1                47     199  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           0               152     199  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19     225  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     225  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                37     179  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               142     179  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 8       8  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       8  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          1                 0       8  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          0                 8       8  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       1                27      27  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       0                 0      27  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               383     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               159     542  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         1              1014    1140  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         0               126    1140  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               295     348  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                53     348  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               131     201  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     201  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                52     149  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                97     149  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          1               101     201  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          0               100     201  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                67     219  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               152     219  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           1                42     187  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           0               145     187  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                18     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               208     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     177  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               139     177  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 9       9  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       9  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          1                 0       8  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          0                 8       8  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       1                16      16  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       0                 0      16  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               344     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               141     485  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         1               945    1052  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         0               107    1052  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               238     280  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                42     280  y_rate_wtkg      


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
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b2c0d124-5570-48c5-a7fc-ae55bb2e12c2/b2c56cea-72eb-45c9-b8d0-6d067cdcce29/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b2c0d124-5570-48c5-a7fc-ae55bb2e12c2/b2c56cea-72eb-45c9-b8d0-6d067cdcce29/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b2c0d124-5570-48c5-a7fc-ae55bb2e12c2/b2c56cea-72eb-45c9-b8d0-6d067cdcce29/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8919219    0.8618567   0.9219870
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.8533550    0.8151630   0.8915469
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.1302781    1.0572939   1.2032623
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.0334085    0.9927450   1.0740720
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                0.7710008    0.7394079   0.8025937
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                0.7409360    0.7058363   0.7760358
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                0.9581210    0.9091202   1.0071217
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                0.9577103    0.9241693   0.9912513
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                1.0099918    0.9580066   1.0619769
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                0.9600592    0.9312206   0.9888978
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.9529442    0.8704396   1.0354489
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.9422639    0.9133665   0.9711613
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9104375    0.8372074   0.9836677
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8742329    0.8370930   0.9113728
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.7909091    0.7730412   0.8087769
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.5848785    0.4649754   0.7047816
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.9072980    0.8905867   0.9240094
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.8875165    0.8574286   0.9176043
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                0.9334480    0.9214650   0.9454309
0-3 months     ki1101329-Keneba          GAMBIA                         0                    NA                0.8757951    0.8351273   0.9164629
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8311879    0.8118447   0.8505310
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.7964984    0.7487334   0.8442633
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.8567527    0.8529582   0.8605472
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.8576756    0.8467538   0.8685975
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.7812978    0.7364954   0.8261001
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.7604462    0.6455047   0.8753878
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4784853    0.4588989   0.4980716
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4805456    0.4469087   0.5141824
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.5683191    0.5143746   0.6222636
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.5889827    0.5452429   0.6327224
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                0.4341100    0.4117565   0.4564636
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                0.4574284    0.4273959   0.4874608
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                0.4927484    0.4560602   0.5294366
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                0.5329013    0.5084565   0.5573460
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                0.4707193    0.4306315   0.5108070
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                0.5058574    0.4840277   0.5276870
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.4593875    0.4064110   0.5123639
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.4668065    0.4383136   0.4952993
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4827413    0.4350411   0.5304415
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4343888    0.4042832   0.4644945
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.4486193    0.4260666   0.4711720
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.5450975    0.4502057   0.6399893
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.4874365    0.4740153   0.5008577
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.4888633    0.4575113   0.5202153
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                0.4462970    0.4360517   0.4565422
3-6 months     ki1101329-Keneba          GAMBIA                         0                    NA                0.4460645    0.4163421   0.4757868
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4872367    0.4720202   0.5024532
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5340810    0.4918440   0.5763180
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.4393501    0.4352874   0.4434128
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.4385292    0.4267463   0.4503122
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2398373    0.2213745   0.2583000
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2518736    0.2239332   0.2798140
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.3814318    0.3287428   0.4341208
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.3877999    0.3556629   0.4199369
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                0.2173822    0.1996429   0.2351215
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    NA                0.2349246    0.2086909   0.2611583
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2544660    0.2279902   0.2809419
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2784835    0.2600308   0.2969363
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                0.2551941    0.2206309   0.2897573
6-9 months     ki0047075b-MAL-ED         PERU                           0                    NA                0.2645013    0.2467609   0.2822417
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2632420    0.1757025   0.3507816
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2553990    0.2329657   0.2778324
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1913298    0.1445229   0.2381368
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2574942    0.2255269   0.2894616
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2011514    0.1761538   0.2261489
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2272674    0.1076294   0.3469053
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.2428247    0.2314063   0.2542431
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2653307    0.2348894   0.2957720
6-9 months     ki1101329-Keneba          GAMBIA                         1                    NA                0.2049141    0.1909462   0.2188819
6-9 months     ki1101329-Keneba          GAMBIA                         0                    NA                0.1945117    0.1632678   0.2257556
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1811523    0.1654095   0.1968951
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1819237    0.1507233   0.2131241
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1659837    0.1488723   0.1830952
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1897096    0.1658332   0.2135860
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.2631522    0.2051269   0.3211775
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.2931116    0.2491607   0.3370625
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1609494    0.1437582   0.1781406
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1882815    0.1630518   0.2135112
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1658263    0.1316111   0.2000415
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1928715    0.1770846   0.2086585
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.1881405    0.1534386   0.2228425
9-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.1857610    0.1686710   0.2028510
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2280863    0.1752825   0.2808902
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2100916    0.1854290   0.2347542
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1643138    0.1202321   0.2083955
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1561604    0.1305214   0.1817993
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1948639    0.1799620   0.2097659
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.1502105    0.0814577   0.2189634
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1717666    0.1608837   0.1826495
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1923893    0.1747236   0.2100551
9-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                0.1610176    0.1476782   0.1743570
9-12 months    ki1101329-Keneba          GAMBIA                         0                    NA                0.1459774    0.1044240   0.1875307
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1442953    0.1279797   0.1606108
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1758900    0.1482783   0.2035018
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.1902087    0.1727573   0.2076601
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.2088811    0.0611285   0.3566338
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1225127    0.1030309   0.1419945
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1604864    0.1325068   0.1884661
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1661609    0.1186930   0.2136289
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.2261697    0.1936845   0.2586548
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1641190    0.1413730   0.1868650
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.1821973    0.1569993   0.2073952
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1665144    0.1232208   0.2098079
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1483838    0.1316024   0.1651652
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.1388069    0.1038811   0.1737327
12-15 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.1436752    0.1244248   0.1629256
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.0443483   -0.1019949   0.1906914
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2002912    0.1757875   0.2247948
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1077176    0.0502593   0.1651759
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1808175    0.1512659   0.2103691
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1856157    0.1746788   0.1965527
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.1211321    0.0010982   0.2411659
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1717154    0.1583686   0.1850622
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2001675    0.1771907   0.2231442
12-15 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.1866376    0.1753938   0.1978814
12-15 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.1819848    0.1542814   0.2096883
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1737678    0.1583546   0.1891810
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1555771    0.1212432   0.1899110
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.1091541    0.0864509   0.1318573
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.1053721    0.0172146   0.1935296
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1484377    0.1278485   0.1690268
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1249770    0.1014462   0.1485077
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1477577    0.1003779   0.1951374
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.2401823    0.2055124   0.2748522
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1714192    0.1505477   0.1922907
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.1617709    0.1390325   0.1845093
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1940931    0.1601867   0.2279994
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1631928    0.1450049   0.1813807
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.1484341    0.1157716   0.1810966
15-18 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.1425377    0.1199514   0.1651239
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3537680    0.2248006   0.4827354
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2084255    0.1796546   0.2371963
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1163253    0.0634596   0.1691909
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1384443    0.1103886   0.1664999
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1711459    0.1465870   0.1957048
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2893896    0.0839430   0.4948361
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1554712    0.1420538   0.1688885
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1569583    0.1337665   0.1801500
15-18 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.1576408    0.1464884   0.1687932
15-18 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.1754261    0.1411112   0.2097410
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2211564    0.2033291   0.2389836
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2760419    0.2245901   0.3274938
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.1507835    0.1251569   0.1764102
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.1716631    0.1435467   0.1997795
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1425536    0.1204071   0.1647002
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1503476    0.1253082   0.1753871
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1355274    0.0917598   0.1792950
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1732311    0.1404809   0.2059813
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1735317    0.1541144   0.1929490
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.1729768    0.1486313   0.1973222
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1388450    0.0930751   0.1846150
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1544656    0.1373431   0.1715881
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.1838624    0.1465524   0.2211723
18-21 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.1558733    0.1337042   0.1780424
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1725125    0.1036740   0.2413509
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1804365    0.1513725   0.2095004
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1687069    0.0942354   0.2431784
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1522408    0.1237756   0.1807060
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1224917    0.1089932   0.1359902
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1586328    0.1380413   0.1792244
18-21 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.1557209    0.1437016   0.1677403
18-21 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.1428262    0.1085975   0.1770550
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1549735    0.1361542   0.1737927
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.0992928    0.0608824   0.1377033
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1520377    0.1325398   0.1715355
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1419092    0.1199724   0.1638460
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1369110    0.0953663   0.1784557
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1361076    0.1064055   0.1658098
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1520977    0.1334945   0.1707010
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.1665886    0.1461483   0.1870288
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1933554    0.1595375   0.2271734
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1541339    0.1297644   0.1785033
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.1596730    0.1204353   0.1989107
21-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.1855892    0.1625692   0.2086093
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1751033    0.0853804   0.2648262
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1885668    0.1634104   0.2137233
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1203484    0.0557785   0.1849182
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1395112    0.1051390   0.1738834
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1440960    0.1302015   0.1579906
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1368471    0.1179692   0.1557250
21-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.1679247    0.1565008   0.1793486
21-24 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.1861894    0.1494506   0.2229282
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1626873    0.1356933   0.1896813
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1532001    0.0923010   0.2140992


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8782283   0.8546037   0.9018529
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.0646542   1.0280029   1.1013055
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                0.7574589   0.7340940   0.7808237
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.9584228   0.9310012   0.9858444
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                0.9695845   0.9443399   0.9948290
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.9436816   0.9164103   0.9709528
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8823647   0.8498032   0.9149263
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.7852849   0.7678149   0.8027549
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1101329-Keneba          GAMBIA                         NA                   NA                0.9267686   0.9151552   0.9383820
0-3 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.8249513   0.8069417   0.8429610
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.8567788   0.8531299   0.8604277
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.7701110   0.7280930   0.8121290
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4759067   0.4588572   0.4929562
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.5807629   0.5466123   0.6149135
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4428354   0.4243688   0.4613020
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.5212569   0.5007636   0.5417503
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                0.4987110   0.4795495   0.5178726
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.4651960   0.4389728   0.4914192
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4449049   0.4193050   0.4705047
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.4538554   0.4355388   0.4721719
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1101329-Keneba          GAMBIA                         NA                   NA                0.4464139   0.4367093   0.4561186
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4947387   0.4800952   0.5093821
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.4392001   0.4352946   0.4431056
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2435771   0.2286416   0.2585125
6-9 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.3852363   0.3576221   0.4128505
6-9 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2257708   0.2103479   0.2411937
6-9 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2707612   0.2558425   0.2856799
6-9 months     ki0047075b-MAL-ED         PERU                           NA                   NA                0.2615943   0.2459743   0.2772143
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2582981   0.2366643   0.2799319
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2452641   0.2182544   0.2722738
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2018620   0.1756088   0.2281152
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1101329-Keneba          GAMBIA                         NA                   NA                0.2039501   0.1910280   0.2168722
6-9 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1833726   0.1693467   0.1973984
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1742501   0.1603345   0.1881656
9-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.2870152   0.2525341   0.3214963
9-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1750483   0.1600136   0.1900829
9-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1845885   0.1697713   0.1994057
9-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                0.1859375   0.1706537   0.2012212
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2134162   0.1908275   0.2360049
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1579518   0.1360310   0.1798726
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1940042   0.1780308   0.2099775
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1101329-Keneba          GAMBIA                         NA                   NA                0.1588343   0.1459911   0.1716774
9-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1493494   0.1349712   0.1637275
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.1927867   0.1760286   0.2095447
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1349541   0.1188584   0.1510499
12-15 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.2098691   0.1830086   0.2367295
12-15 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1746076   0.1576725   0.1915427
12-15 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1530291   0.1359519   0.1701063
12-15 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.1429995   0.1263204   0.1596787
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1888436   0.1630039   0.2146833
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1670430   0.1409337   0.1931523
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1855182   0.1710991   0.1999372
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.1865584   0.1760031   0.1971137
12-15 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1715034   0.1574465   0.1855603
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.1088810   0.0873587   0.1304034
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1419687   0.1260987   0.1578386
15-18 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.2081023   0.1789625   0.2372420
15-18 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1670737   0.1513151   0.1828322
15-18 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1721904   0.1559804   0.1884004
15-18 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.1444767   0.1256292   0.1633242
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2221335   0.1931701   0.2510970
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1366378   0.1119409   0.1613347
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1741261   0.1450974   0.2031549
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.1589866   0.1483646   0.1696085
15-18 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.2313498   0.2143055   0.2483941
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.1538108   0.1308637   0.1767579
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1441563   0.1270864   0.1612262
18-21 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1618510   0.1358468   0.1878551
18-21 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1719770   0.1564970   0.1874571
18-21 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1511761   0.1334727   0.1688794
18-21 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.1620790   0.1430444   0.1811137
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1798838   0.1527878   0.2069798
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1578080   0.1309046   0.1847113
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.1542266   0.1428315   0.1656218
18-21 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1478606   0.1308537   0.1648675
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1485991   0.1337648   0.1634334
21-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1369019   0.1132291   0.1605747
21-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1590319   0.1452622   0.1728016
21-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1662354   0.1463078   0.1861631
21-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.1814454   0.1615858   0.2013051
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1880230   0.1639514   0.2120945
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1380758   0.1082723   0.1678793
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.1699244   0.1590193   0.1808295
21-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1608641   0.1363372   0.1853911


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0385669   -0.0873135    0.0101797
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0968696   -0.1806923   -0.0130469
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0300648   -0.0775943    0.0174647
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0004106   -0.0598943    0.0590730
0-3 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           0                    1                 -0.0499326   -0.1095034    0.0096383
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0106804   -0.0978775    0.0765167
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0362046   -0.1193096    0.0469004
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.2060306   -0.3344038   -0.0776574
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0197816   -0.0541212    0.0145581
0-3 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0576529   -0.1000703   -0.0152355
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0346895   -0.0862483    0.0168693
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0009229   -0.0103270    0.0121728
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0208515   -0.1432440    0.1015409
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0020603   -0.0372713    0.0413919
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0206635   -0.0492064    0.0905335
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0233183   -0.0143755    0.0610122
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0401529   -0.0036611    0.0839668
3-6 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0351381   -0.0105823    0.0808586
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0074190   -0.0528134    0.0676514
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0483525   -0.1052628    0.0085578
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0964782   -0.0111936    0.2041500
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0014268   -0.0325699    0.0354235
3-6 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0002325   -0.0314758    0.0310108
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0468443    0.0021631    0.0915256
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0008208   -0.0130576    0.0114160
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0120363   -0.0223292    0.0464018
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0063681   -0.0549093    0.0676455
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0175424   -0.0144212    0.0495059
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0240175   -0.0085616    0.0565966
6-9 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0093072   -0.0296207    0.0482351
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0078430   -0.0988726    0.0831866
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0661644    0.0098078    0.1225210
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0261160   -0.0862950    0.1385270
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0225061   -0.0098147    0.0548268
6-9 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0104024   -0.0445182    0.0237134
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0007714   -0.0345052    0.0360480
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0237258   -0.0056939    0.0531456
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0299594   -0.0434332    0.1033521
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.0273321   -0.0036701    0.0583344
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0270452   -0.0107582    0.0648486
9-12 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU                           0                    1                 -0.0023795   -0.0410736    0.0363147
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0179948   -0.0767360    0.0407465
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0081534   -0.0599737    0.0436669
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0446534   -0.1050363    0.0157295
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0206228   -0.0000375    0.0412830
9-12 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA                         0                    1                 -0.0150402   -0.0581636    0.0280832
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0315948   -0.0005990    0.0637885
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0186724   -0.1302147    0.1675595
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0379737    0.0038639    0.0720835
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0600087    0.0021098    0.1179077
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0180783   -0.0159322    0.0520887
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0181306   -0.0646881    0.0284270
12-15 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0048683   -0.0350368    0.0447734
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.1559429    0.0072881    0.3045978
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0730999    0.0081697    0.1380301
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0644837   -0.1771487    0.0481813
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0284521    0.0021307    0.0547734
12-15 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.0046528   -0.0341698    0.0248642
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0181908   -0.0558841    0.0195026
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0037820   -0.0948153    0.0872513
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0234607   -0.0544847    0.0075633
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0924247    0.0336105    0.1512389
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0096483   -0.0403796    0.0210831
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0309003   -0.0693183    0.0075177
15-18 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0058965   -0.0456433    0.0338504
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.1453425   -0.2775827   -0.0131023
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0221190   -0.0378286    0.0820667
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.1182437   -0.0708346    0.3073219
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0014871   -0.0251055    0.0280797
15-18 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA                         0                    1                  0.0177853   -0.0182980    0.0538686
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0548856    0.0000692    0.1097020
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0208796   -0.0169323    0.0586914
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0077940   -0.0252228    0.0408108
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0377037   -0.0172928    0.0927001
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0005549   -0.0317868    0.0306769
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0156206   -0.0337405    0.0649816
18-21 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0279891   -0.0714734    0.0154953
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0079240   -0.0666529    0.0825009
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0164661   -0.0961927    0.0632604
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0361411    0.0116923    0.0605899
18-21 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.0128947   -0.0489478    0.0231584
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0556806   -0.0985719   -0.0127894
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0101285   -0.0393720    0.0191150
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0008034   -0.0526879    0.0510812
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0144908   -0.0131950    0.0421767
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0392216   -0.0808921    0.0024490
21-24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0259163   -0.0196453    0.0714778
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0134635   -0.0797384    0.1066654
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0191628   -0.0548162    0.0931419
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0072489   -0.0302310    0.0157332
21-24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA                         0                    1                  0.0182647   -0.0202094    0.0567388
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0094872   -0.0760236    0.0570491


### Parameter: PAR


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0136935   -0.0310071    0.0036200
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0656239   -0.1226126   -0.0086352
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0135420   -0.0360678    0.0089839
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0003018   -0.0417599    0.0423636
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0404073   -0.0868815    0.0060669
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0092627   -0.0893521    0.0708268
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0280728   -0.0941228    0.0379772
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0056242   -0.0122651    0.0010167
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0056509   -0.0158548    0.0045531
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0066794   -0.0118395   -0.0015193
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0062365   -0.0150605    0.0025874
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0000261   -0.0010172    0.0010694
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0111868   -0.0226384    0.0002649
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0025786   -0.0164463    0.0112891
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0124438   -0.0351413    0.0600289
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0087253   -0.0092161    0.0266668
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0285085   -0.0023997    0.0594167
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0279918   -0.0073687    0.0633522
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0058085   -0.0490328    0.0606499
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0378365   -0.0827227    0.0070498
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0052360   -0.0000300    0.0105021
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0016246   -0.0080692    0.0113184
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                 0.0001170   -0.0035040    0.0037380
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0075020   -0.0000078    0.0150117
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0001500   -0.0012245    0.0009246
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0037398   -0.0084008    0.0158804
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0038045   -0.0376596    0.0452685
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0083886   -0.0069914    0.0237686
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0162952   -0.0064395    0.0390298
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0064002   -0.0237279    0.0365283
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0049439   -0.0876669    0.0777790
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0539342    0.0094502    0.0984183
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0007107   -0.0038116    0.0052329
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0063406   -0.0030938    0.0157751
6-9 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0009640   -0.0045837    0.0026558
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0022203   -0.0037074    0.0081479
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0082663   -0.0020167    0.0185494
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0238630   -0.0256905    0.0734165
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0140989   -0.0016196    0.0298174
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0187622   -0.0081354    0.0456597
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0022031   -0.0319479    0.0275418
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0146701   -0.0676151    0.0382749
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0063620   -0.0474006    0.0346766
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0008598   -0.0033281    0.0016086
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0057650   -0.0003606    0.0118907
9-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0021834   -0.0067167    0.0023500
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0050541   -0.0002214    0.0103296
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0025779   -0.0054109    0.0105668
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0124414    0.0006558    0.0242271
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0437081    0.0045554    0.0828609
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0104886   -0.0063710    0.0273481
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0134852   -0.0464830    0.0195125
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0041926   -0.0269033    0.0352885
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.1444953    0.0068177    0.2821730
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0593254    0.0070309    0.1116198
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0000976   -0.0040742    0.0038790
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0083170    0.0005757    0.0160582
12-15 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0000793   -0.0033352    0.0031767
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0022644   -0.0080935    0.0035647
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0002731   -0.0061558    0.0056096
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0064690   -0.0170584    0.0041204
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0603446    0.0212077    0.0994815
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0043455   -0.0202272    0.0115361
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0219027   -0.0491472    0.0053418
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0039574   -0.0342976    0.0263827
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1316345   -0.2526829   -0.0105860
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0203125   -0.0274728    0.0680979
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0029802   -0.0044878    0.0104483
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0008803   -0.0068531    0.0086136
15-18 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0013458   -0.0026990    0.0053905
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0101935    0.0009815    0.0194055
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0030273   -0.0014297    0.0074842
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0016027   -0.0100420    0.0132473
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0263235   -0.0099938    0.0626409
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0015547   -0.0170565    0.0139472
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0123310   -0.0224887    0.0471507
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0217833   -0.0550727    0.0115061
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0073713   -0.0619203    0.0766629
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0108990   -0.0748253    0.0530274
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0099965    0.0027130    0.0172800
18-21 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0014943   -0.0054107    0.0024221
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0071129   -0.0138415   -0.0003842
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0034386   -0.0136433    0.0067662
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0000091   -0.0336693    0.0336511
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0069342   -0.0071884    0.0210568
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0271200   -0.0562338    0.0019938
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0217725   -0.0137828    0.0573277
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0129197   -0.0733840    0.0992234
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0177275   -0.0406984    0.0761534
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0021256   -0.0086983    0.0044472
21-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0019997   -0.0019037    0.0059032
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0018232   -0.0113729    0.0077266
