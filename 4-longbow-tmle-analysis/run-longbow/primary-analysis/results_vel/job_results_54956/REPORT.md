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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               153     237  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                84     237  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                46     147  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               101     147  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                84     164  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0                80     164  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                53     153  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               100     153  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1                57     262  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0               205     262  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                20     203  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               183     203  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                43     197  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               154     197  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          1                 0      10  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          0                10      10  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       1                31      31  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       0                 0      31  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               411     432  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                21     432  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               449     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               191     640  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         1              1024    1175  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         0               151    1175  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               378     456  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                78     456  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             10702   11852  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              1150   11852  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               145     160  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                15     160  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               147     225  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                78     225  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                60     186  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               126     186  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1               109     206  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0                97     206  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                69     226  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               157     226  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1                61     264  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0               203     264  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     234  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               212     234  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                45     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               163     208  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1                 0      10  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          0                10      10  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       1                31      31  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       0                 0      31  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1               361     379  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                18     379  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               423     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               175     598  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         1              1128    1279  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         0               151    1279  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               350     420  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                70     420  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              6476    7103  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               627    7103  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                21      21  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 0      21  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1               140     217  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                77     217  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                58     177  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               119     177  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1               106     205  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0                99     205  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                68     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               154     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1                57     242  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0               185     242  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               200     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                42     193  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               151     193  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 9       9  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       9  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1                 0      10  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          0                10      10  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       1                36      36  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       0                 0      36  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1               326     341  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                15     341  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               399     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               166     565  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         1               687     770  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         0                83     770  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               314     378  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                64     378  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                17      18  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 1      18  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               142     218  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                76     218  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                58     175  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               117     175  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1               102     201  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0                99     201  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                67     221  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               154     221  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1                55     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0               178     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                23     223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               200     223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                39     192  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               153     192  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 8       8  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       8  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1                 0      10  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          0                10      10  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       1                36      36  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       0                 0      36  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1               348     361  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                13     361  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               400     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               166     566  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         1               664     746  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         0                82     746  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               302     362  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                60     362  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                86      96  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                10      96  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1               136     206  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     206  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                55     165  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               110     165  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1               101     200  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0                99     200  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                67     222  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               155     222  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1                51     222  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0               171     222  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                21     219  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               198     219  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                40     195  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               155     195  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 8       8  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       8  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1                 0      10  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          0                10      10  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       1                29      29  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       0                 0      29  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1               346     357  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                11     357  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               377     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               155     532  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         1              1029    1158  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         0               129    1158  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               313     371  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                58     371  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                99     109  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                10     109  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1               136     206  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     206  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                53     157  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               104     157  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1               101     201  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               100     201  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                66     219  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               153     219  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1                50     210  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0               160     210  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                20     218  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               198     218  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     188  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               150     188  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 8       8  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       8  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1                 0      10  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          0                10      10  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       1                25      25  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       0                 0      25  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1               338     350  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                12     350  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1               376     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               152     528  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         1              1031    1160  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         0               129    1160  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               319     379  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                60     379  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                96     109  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                13     109  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1               132     203  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                71     203  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                52     150  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                98     150  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1               101     201  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               100     201  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                66     219  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               153     219  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1                47     199  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0               152     199  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19     225  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     225  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                36     176  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               140     176  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1                 0       8  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          0                 8       8  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       1                26      26  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       0                 0      26  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               383     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               158     541  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         1              1014    1139  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         0               125    1139  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               295     347  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                52     347  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               131     201  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     201  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                52     149  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                97     149  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1               101     201  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               100     201  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                67     219  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               152     219  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1                42     187  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0               145     187  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                18     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               208     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     175  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               137     175  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 9       9  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       9  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1                 0       8  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          0                 8       8  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       1                16      16  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       0                 0      16  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               334     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               137     471  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         1               944    1050  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         0               106    1050  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               237     279  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                42     279  y_rate_haz       


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
![](/tmp/52bff1d7-6c2f-43de-b527-00a6014a11d2/1c4b3be6-d5b4-4d89-b23e-f3ea39c9d1df/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/52bff1d7-6c2f-43de-b527-00a6014a11d2/1c4b3be6-d5b4-4d89-b23e-f3ea39c9d1df/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/52bff1d7-6c2f-43de-b527-00a6014a11d2/1c4b3be6-d5b4-4d89-b23e-f3ea39c9d1df/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1062971   -0.1476227   -0.0649714
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1684786   -0.2254275   -0.1115298
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1912343    0.0858600    0.2966086
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.1308188    0.0569667    0.2046708
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0079660   -0.0986769    0.0827449
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.1024344   -0.1739111   -0.0309578
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0431613   -0.0944928    0.0081701
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1004939    0.0400452    0.1609427
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.2517986   -0.3211679   -0.1824294
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.2612989   -0.3005833   -0.2220145
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1423487   -0.2638277   -0.0208698
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1732149   -0.2274901   -0.1189396
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0169326   -0.1085777    0.0747124
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1803777   -0.2266888   -0.1340667
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1257104   -0.1530267   -0.0983942
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.3105682   -0.3875824   -0.2335540
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.1835407   -0.2028625   -0.1642190
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.1974741   -0.2327018   -0.1622465
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.2812699   -0.3085138   -0.2540261
0-3 months     ki1101329-Keneba          GAMBIA                         0                    NA                -0.3172334   -0.3824107   -0.2520560
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0391835   -0.0682323   -0.0101348
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0643461   -0.1273077   -0.0013845
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0585716    0.0521674    0.0649759
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0709813    0.0548545    0.0871080
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.1863272   -0.2808670   -0.0917874
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.1731928   -0.4931281    0.1467425
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0293675   -0.0574079   -0.0013271
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0001204   -0.0423879    0.0421471
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0332490   -0.0353481    0.1018461
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0833789    0.0359470    0.1308109
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0370018   -0.0826285    0.0086248
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0483088   -0.0924335   -0.0041842
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0689195   -0.1208693   -0.0169697
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0047732   -0.0363557    0.0268093
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0439096   -0.0189661    0.1067854
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                 0.0173455   -0.0192311    0.0539221
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0467967   -0.0465836    0.1401770
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0136937   -0.0555857    0.0281983
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0901367   -0.1709054   -0.0093681
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0635190   -0.1007987   -0.0262392
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0392874   -0.0742063   -0.0043685
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0493342   -0.1680670    0.2667354
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0204506   -0.0384257   -0.0024755
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0432586   -0.0749529   -0.0115643
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0139366   -0.0345339    0.0066608
3-6 months     ki1101329-Keneba          GAMBIA                         0                    NA                -0.0429786   -0.0980662    0.0121090
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1549574   -0.1763740   -0.1335407
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1624721   -0.2126094   -0.1123348
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0037821   -0.0103231    0.0027588
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0181336   -0.0379380    0.0016707
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0691398   -0.0914084   -0.0468712
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0763661   -0.1057551   -0.0469771
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0000911   -0.0816326    0.0818147
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0105515   -0.0291230    0.0502259
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0806127   -0.1155270   -0.0456984
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0646647   -0.0976489   -0.0316805
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0302918   -0.0671125    0.0065290
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0350210   -0.0586598   -0.0113822
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0124720   -0.0582832    0.0333392
6-9 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.0373485   -0.0657440   -0.0089531
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1325526   -0.2088213   -0.0562839
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0050454   -0.0359079    0.0258171
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1010931   -0.1774857   -0.0247004
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1002346   -0.1374698   -0.0629995
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0843619   -0.1216004   -0.0471234
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1655348   -0.3145653   -0.0165043
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0650695   -0.0778388   -0.0523002
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0526638   -0.0733813   -0.0319463
6-9 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0145273   -0.0404208    0.0113661
6-9 months     ki1101329-Keneba          GAMBIA                         0                    NA                -0.0283747   -0.0991942    0.0424449
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0442725   -0.0680997   -0.0204454
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0630275   -0.1044478   -0.0216072
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0861724   -0.1066708   -0.0656739
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0863704   -0.1132328   -0.0595080
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0009303   -0.0481364    0.0499971
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0068574   -0.0346808    0.0483955
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1181067   -0.1401792   -0.0960342
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0754647   -0.0986806   -0.0522487
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0847120   -0.1170137   -0.0524103
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0568787   -0.0774832   -0.0362742
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0481380   -0.0942773   -0.0019987
9-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0376855   -0.0624128   -0.0129581
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0330555   -0.1290218    0.0629107
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0981567   -0.1260625   -0.0702509
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1820079   -0.2425591   -0.1214566
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1475758   -0.1912492   -0.1039023
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0905296   -0.1197786   -0.0612805
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0522216   -0.0596752    0.1641184
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0702019   -0.0828776   -0.0575261
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0466816   -0.0676521   -0.0257111
9-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.1020499   -0.1218702   -0.0822297
9-12 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0833135   -0.1332990   -0.0333281
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0873878   -0.1062109   -0.0685646
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0536060   -0.0823286   -0.0248834
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0502828   -0.0872942   -0.0132715
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0613263   -0.1302884    0.2529411
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0705084   -0.0889122   -0.0521046
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0418432   -0.0720049   -0.0116815
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0006478   -0.0380452    0.0367495
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0000024   -0.0296373    0.0296421
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0698740   -0.0939569   -0.0457910
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0527852   -0.0753862   -0.0301842
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0586528   -0.0870422   -0.0302635
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0573067   -0.0764134   -0.0382000
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0673223   -0.0983385   -0.0363062
12-15 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0661982   -0.0874388   -0.0449576
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0785763   -0.1539643   -0.0031884
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0566988   -0.0817684   -0.0316291
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1123284   -0.1626299   -0.0620270
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0563032   -0.0878571   -0.0247493
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0780904   -0.1070778   -0.0491030
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1499139   -0.2572906   -0.0425372
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0457973   -0.0574911   -0.0341035
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0266184   -0.0461138   -0.0071231
12-15 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0455216   -0.0590367   -0.0320064
12-15 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0766977   -0.1091524   -0.0442430
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0687680   -0.0801143   -0.0574216
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0768107   -0.1079032   -0.0457181
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0314355   -0.0585462   -0.0043248
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0022115   -0.1058687    0.1102916
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0396434   -0.0574137   -0.0218731
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0506440   -0.0717031   -0.0295849
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0271403   -0.0660129    0.0117324
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0287399   -0.0565322   -0.0009476
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0425395   -0.0608787   -0.0242003
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0252729   -0.0449988   -0.0055469
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0723404   -0.1005569   -0.0441238
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0505542   -0.0691594   -0.0319489
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0488857   -0.0807176   -0.0170539
15-18 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0305631   -0.0484583   -0.0126679
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0271821   -0.0920111    0.0376468
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0278354   -0.0480151   -0.0076556
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0795362   -0.1360343   -0.0230381
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0932823   -0.1199741   -0.0665905
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0173193   -0.0380203    0.0033816
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0450344   -0.1392428    0.2293117
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0326635   -0.0429245   -0.0224025
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0512519   -0.0679160   -0.0345878
15-18 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0299723   -0.0432955   -0.0166490
15-18 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0277950   -0.0683223    0.0127323
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0573744   -0.0727133   -0.0420355
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0987177   -0.1193178   -0.0781177
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0060808   -0.0352850    0.0231235
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0886654    0.0257337    0.1515971
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0199174   -0.0357367   -0.0040981
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0066851   -0.0246225    0.0112523
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0244082   -0.0702004    0.0213840
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0122767   -0.0427941    0.0182408
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0022142   -0.0194593    0.0150308
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0097543   -0.0076739    0.0271824
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0209467   -0.0444810    0.0025877
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0276538   -0.0440411   -0.0112665
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0084119   -0.0230088    0.0398326
18-21 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0114192   -0.0290047    0.0061663
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0013003   -0.0579387    0.0605393
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0345076   -0.0553809   -0.0136342
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0119103   -0.0667485    0.0429280
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0298839   -0.0575262   -0.0022417
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0129252   -0.0227799   -0.0030704
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0060868   -0.0204825    0.0083089
18-21 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0230300   -0.0367991   -0.0092609
18-21 months   ki1101329-Keneba          GAMBIA                         0                    NA                 0.0040731   -0.0378490    0.0459953
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0164763    0.0001373    0.0328152
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0199509   -0.0060056    0.0459074
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0267070    0.0108124    0.0426016
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0177178   -0.0016505    0.0370861
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0020068   -0.0237632    0.0277768
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0151627   -0.0061982    0.0365236
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0347086    0.0185267    0.0508906
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0283304    0.0114872    0.0451736
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0218400   -0.0020890    0.0457690
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0019150   -0.0151345    0.0189645
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0456295    0.0165922    0.0746667
21-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0613872    0.0434396    0.0793348
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0550775    0.0061100    0.1040450
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0460663    0.0275608    0.0645718
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0221638   -0.0227826    0.0671103
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0076242   -0.0205663    0.0358147
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0450349    0.0346480    0.0554218
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.0489247    0.0332886    0.0645608
21-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0150069    0.0021443    0.0278695
21-24 months   ki1101329-Keneba          GAMBIA                         0                    NA                 0.0073230   -0.0202176    0.0348636
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0523590    0.0323057    0.0724123
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0232403   -0.0590740    0.0125935


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1272271   -0.1614593   -0.0929949
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.1488245    0.0885499    0.2090991
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0545690   -0.1093806    0.0002426
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0510100    0.0061541    0.0958660
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.2631203   -0.2975785   -0.2286621
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1701813   -0.2201854   -0.1201772
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1481092   -0.1901169   -0.1061015
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.1347598   -0.1669848   -0.1025348
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.2858165   -0.3111208   -0.2605122
0-3 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0389250   -0.0654744   -0.0123756
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                 0.0597934    0.0535906    0.0659963
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.1924078   -0.2822434   -0.1025722
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0185754   -0.0420362    0.0048853
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0650837    0.0260851    0.1040822
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0434351   -0.0750382   -0.0118321
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0255014   -0.0523456    0.0013427
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0252665   -0.0061992    0.0567322
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0065980   -0.0455003    0.0323043
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0668448   -0.1004432   -0.0332465
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0357951   -0.0659472   -0.0056430
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0175712   -0.0368273    0.0016849
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.1580566   -0.1776900   -0.1384232
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0050744   -0.0113651    0.0012163
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0719928   -0.0896446   -0.0543410
6-9 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0070906   -0.0301925    0.0443736
6-9 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0730513   -0.0967576   -0.0493449
6-9 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0334124   -0.0530149   -0.0138099
6-9 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0344967   -0.0587887   -0.0102046
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0137350   -0.0427808    0.0153108
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0947719   -0.1279445   -0.0615994
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0842147   -0.1210357   -0.0473936
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0155849   -0.0397472    0.0085773
6-9 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0454089   -0.0661443   -0.0246735
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0853635   -0.1017180   -0.0690090
9-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0033209   -0.0300480    0.0366898
9-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0973168   -0.1135502   -0.0810834
9-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0634351   -0.0807824   -0.0460878
9-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0414622   -0.0630765   -0.0198479
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0920764   -0.1191029   -0.0650499
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1543757   -0.1899833   -0.1187681
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0874131   -0.1167860   -0.0580402
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0997645   -0.1180627   -0.0814663
9-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0793581   -0.0958225   -0.0628937
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0463035   -0.0812128   -0.0113943
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0541395   -0.0699573   -0.0383217
12-15 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0004235   -0.0234370    0.0225900
12-15 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0593506   -0.0758306   -0.0428707
12-15 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0574001   -0.0732076   -0.0415925
12-15 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0661802   -0.0840222   -0.0483383
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0589478   -0.0825397   -0.0353559
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0678133   -0.0945748   -0.0410518
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0801725   -0.1084262   -0.0519187
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0491320   -0.0616698   -0.0365941
12-15 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0698643   -0.0805537   -0.0591748
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0245445   -0.0504325    0.0013435
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0458018   -0.0595013   -0.0321023
15-18 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0272762   -0.0493683   -0.0051840
15-18 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0347219   -0.0482094   -0.0212344
15-18 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0558396   -0.0714014   -0.0402779
15-18 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0366273   -0.0521417   -0.0211130
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0303264   -0.0494996   -0.0111532
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0885708   -0.1125745   -0.0645671
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0159336   -0.0379140    0.0060468
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0300972   -0.0427822   -0.0174122
15-18 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0623706   -0.0756949   -0.0490463
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                 0.0002451   -0.0264873    0.0269774
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0156920   -0.0275555   -0.0038285
18-21 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0173059   -0.0423234    0.0077117
18-21 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                 0.0035076   -0.0086867    0.0157020
18-21 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0277114   -0.0411503   -0.0142726
18-21 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0075674   -0.0228614    0.0077265
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0319118   -0.0515078   -0.0123157
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0280548   -0.0527783   -0.0033314
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0215601   -0.0346304   -0.0084897
18-21 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                 0.0192890    0.0050754    0.0335026
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                 0.0244279    0.0120979    0.0367579
21-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0141891   -0.0024092    0.0307875
21-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                 0.0316867    0.0200407    0.0433327
21-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0073452   -0.0067007    0.0213911
21-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0575837    0.0421321    0.0730353
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.0454561    0.0281790    0.0627333
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0106677   -0.0132987    0.0346340
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                 0.0143816    0.0024808    0.0262823
21-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                 0.0458107    0.0279350    0.0636865


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0621816   -0.1313157    0.0069525
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0604156   -0.1891313    0.0683002
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0944684   -0.2107687    0.0218318
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1436553    0.0649298    0.2223808
0-3 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           0                    1                 -0.0095002   -0.0887565    0.0697560
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0308661   -0.1650002    0.1032680
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1634451   -0.2659716   -0.0609186
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.1848578   -0.2573389   -0.1123766
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0139334   -0.0537175    0.0258507
0-3 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0359635   -0.1062197    0.0342928
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0251625   -0.0946774    0.0443523
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0124096   -0.0040697    0.0288890
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0131344   -0.3204320    0.3467009
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0292471   -0.0214763    0.0799705
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0501299   -0.0334360    0.1336958
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0113070   -0.0749740    0.0523601
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0641463    0.0032036    0.1250889
3-6 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           0                    1                 -0.0265641   -0.0991814    0.0460531
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0604904   -0.1628375    0.0418567
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0266178   -0.0626210    0.1158565
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0886216   -0.1456419    0.3228850
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0228080   -0.0588231    0.0132072
3-6 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0290421   -0.0877158    0.0296317
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0075147   -0.0620416    0.0470121
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0143515   -0.0348885    0.0061854
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0072263   -0.0441541    0.0297015
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0104604   -0.0816307    0.1025515
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0159480   -0.0321610    0.0640570
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0047292   -0.0484979    0.0390394
6-9 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU                           0                    1                 -0.0248766   -0.0785739    0.0288207
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.1275072    0.0446391    0.2103754
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0008585   -0.0839984    0.0857153
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0811729   -0.2268372    0.0644914
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0124057   -0.0119613    0.0367726
6-9 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0138473   -0.0895770    0.0618824
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0187550   -0.0671929    0.0296829
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0001980   -0.0339062    0.0335102
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0059270   -0.0584968    0.0703509
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.0426420    0.0107090    0.0745751
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0278333   -0.0105957    0.0662622
9-12 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0104526   -0.0421387    0.0630438
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0651012   -0.1652144    0.0350120
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0344321   -0.0403161    0.1091803
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.1427512    0.0422034    0.2432990
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0235203   -0.0006665    0.0477071
9-12 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA                         0                    1                  0.0187364   -0.0353983    0.0728711
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0337818   -0.0005943    0.0681579
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.1116091   -0.0840156    0.3072339
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0286652   -0.0071015    0.0644318
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0006502   -0.0466954    0.0479958
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0170887   -0.0161993    0.0503768
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0013462   -0.0328920    0.0355843
12-15 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0011241   -0.0363000    0.0385483
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0218776   -0.0573416    0.1010968
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0560253   -0.0034117    0.1154622
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0718234   -0.1807653    0.0371184
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0191789   -0.0034741    0.0418318
12-15 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.0311761   -0.0663257    0.0039735
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0080427   -0.0411358    0.0250504
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0336470   -0.0780045    0.1452984
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0110006   -0.0388378    0.0168367
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0015996   -0.0493600    0.0461607
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0172667   -0.0098378    0.0443711
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0217862   -0.0119226    0.0554950
15-18 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0183226   -0.0183067    0.0549519
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0006532   -0.0685983    0.0672919
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0137461   -0.0763324    0.0488402
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0623537   -0.1184034    0.2431109
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0185884   -0.0381863    0.0010094
15-18 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA                         0                    1                  0.0021773   -0.0404758    0.0448304
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0413433   -0.0669797   -0.0157069
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0947462    0.0245576    0.1649347
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0132323   -0.0109201    0.0373847
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0121315   -0.0436526    0.0679156
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0119685   -0.0126136    0.0365506
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0067072   -0.0355014    0.0220871
18-21 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0198311   -0.0561745    0.0165124
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0358079   -0.0988522    0.0272364
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0179737   -0.0796556    0.0437082
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0068384   -0.0105216    0.0241983
18-21 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA                         0                    1                  0.0271031   -0.0171813    0.0713876
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0034746   -0.0281386    0.0350878
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0089892   -0.0340018    0.0160234
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0131559   -0.0205562    0.0468681
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0063782   -0.0299108    0.0171543
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0199250   -0.0489943    0.0091444
21-24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0157577   -0.0181172    0.0496327
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0090112   -0.0613492    0.0433268
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0145396   -0.0677291    0.0386498
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0038898   -0.0148633    0.0226429
21-24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.0076840   -0.0379839    0.0226160
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0755993   -0.1171203   -0.0340782


### Parameter: PAR


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0209300   -0.0456684    0.0038084
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0424098   -0.1315177    0.0466981
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0466030   -0.1077336    0.0145276
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0941714    0.0415383    0.1468044
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0113216   -0.0735603    0.0509171
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0278325   -0.1499680    0.0943030
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1311765   -0.2125985   -0.0497546
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0090494   -0.0146012   -0.0034975
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0044995   -0.0163603    0.0073614
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0045466   -0.0135472    0.0044540
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0002585   -0.0122434    0.0127604
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0012218   -0.0003623    0.0028059
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0060805   -0.0343664    0.0222054
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0107921   -0.0069044    0.0284885
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0318347   -0.0250773    0.0887466
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0064333   -0.0363128    0.0234462
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0434180   -0.0011508    0.0879868
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0186431   -0.0748755    0.0375893
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0533947   -0.1463875    0.0395981
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0232919   -0.0471609    0.0937447
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0034923   -0.0063212    0.0133058
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0065119   -0.0170316    0.0040078
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0036346   -0.0103199    0.0030507
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0030992   -0.0121677    0.0059692
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0012923   -0.0030827    0.0004982
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0028530   -0.0159294    0.0102234
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0069995   -0.0548268    0.0688258
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0075614   -0.0155200    0.0306428
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0031207   -0.0342301    0.0279888
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0220247   -0.0631714    0.0191220
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.1188176    0.0429228    0.1947125
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0063211   -0.0608647    0.0735070
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0001472   -0.0062279    0.0065224
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0036431   -0.0035267    0.0108129
6-9 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0010576   -0.0091291    0.0070139
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0011364   -0.0091177    0.0068448
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0008089   -0.0109797    0.0125975
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0023906   -0.0406903    0.0454715
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0207899    0.0048162    0.0367635
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0212769   -0.0056365    0.0481902
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0066759   -0.0335159    0.0468676
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0590209   -0.1492103    0.0311686
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0276322   -0.0316724    0.0869367
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0031165   -0.0003309    0.0065639
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0071549    0.0000672    0.0142425
9-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0022855   -0.0033728    0.0079437
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0080297    0.0019027    0.0141566
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0039793   -0.0106243    0.0185829
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0163689    0.0040829    0.0286548
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0002243   -0.0317529    0.0322015
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0105233   -0.0062358    0.0272825
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0012528   -0.0230599    0.0255654
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0011421   -0.0277073    0.0299915
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0196285   -0.0529778    0.0922348
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0445151   -0.0034511    0.0924813
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0020820   -0.0054357    0.0012716
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0048866   -0.0016802    0.0114533
12-15 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0036104   -0.0075224    0.0003016
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0010963   -0.0061904    0.0039978
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0068910   -0.0017798    0.0155618
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0061584   -0.0155751    0.0032584
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0001359   -0.0320704    0.0317986
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0078176   -0.0060965    0.0217317
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0165007   -0.0071950    0.0401964
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0122584   -0.0158463    0.0403630
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0031442   -0.0652334    0.0589449
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0090346   -0.0592603    0.0411911
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0013857   -0.0044708    0.0072422
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0049802   -0.0106349    0.0006744
15-18 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0001250   -0.0048929    0.0046430
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0049962   -0.0092708   -0.0007217
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0063258   -0.0027191    0.0153708
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0042254   -0.0042369    0.0126876
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0071023   -0.0292471    0.0434517
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0057219   -0.0065148    0.0179586
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0067648   -0.0269393    0.0134097
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0159793   -0.0441600    0.0122013
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0332121   -0.0914817    0.0250575
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0161446   -0.0655649    0.0332758
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0019853   -0.0030648    0.0070353
18-21 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0014699   -0.0034800    0.0064199
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0028127   -0.0021818    0.0078072
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0022792   -0.0109559    0.0063976
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0121824   -0.0099188    0.0342835
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0030220   -0.0147795    0.0087356
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0144948   -0.0348816    0.0058919
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0119543   -0.0144548    0.0383633
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0096213   -0.0587725    0.0395298
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0114962   -0.0536443    0.0306520
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0011993   -0.0042397    0.0066383
21-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0006254   -0.0036239    0.0023731
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0065483   -0.0131974    0.0001008
