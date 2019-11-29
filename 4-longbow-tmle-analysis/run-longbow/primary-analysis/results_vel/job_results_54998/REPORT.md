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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               153     237  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                84     237  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                46     147  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               101     147  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                84     164  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0                80     164  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                53     153  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               100     153  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1                57     262  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0               205     262  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                20     203  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               183     203  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                43     197  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               154     197  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          1                 0      10  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          0                10      10  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       1                31      31  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       0                 0      31  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               411     432  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                21     432  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               449     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               191     640  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         1              1024    1175  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         0               151    1175  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               378     456  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                78     456  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             10702   11852  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              1150   11852  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               145     160  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                15     160  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               147     225  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                78     225  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                60     186  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               126     186  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1               109     206  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0                97     206  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                69     226  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               157     226  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1                61     264  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0               203     264  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     234  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               212     234  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                45     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               163     208  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1                 0      10  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          0                10      10  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       1                31      31  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       0                 0      31  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1               361     379  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                18     379  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               423     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               175     598  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         1              1128    1279  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         0               151    1279  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               350     420  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                70     420  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              6476    7103  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               627    7103  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                21      21  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 0      21  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1               140     217  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                77     217  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                58     177  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               119     177  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1               106     205  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0                99     205  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                68     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               154     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1                57     242  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0               185     242  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               200     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                42     193  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               151     193  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 9       9  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       9  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1                 0      10  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          0                10      10  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       1                36      36  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       0                 0      36  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1               326     341  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                15     341  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               399     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               166     565  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         1               687     770  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         0                83     770  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               314     378  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                64     378  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                17      18  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 1      18  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               142     218  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                76     218  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                58     175  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               117     175  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1               102     201  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0                99     201  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                67     221  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               154     221  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1                55     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0               178     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                23     223  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               200     223  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                39     192  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               153     192  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 8       8  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       8  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1                 0      10  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          0                10      10  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       1                36      36  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       0                 0      36  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1               348     361  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                13     361  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               400     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               166     566  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         1               664     746  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         0                82     746  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               302     362  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                60     362  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                86      96  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                10      96  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1               136     206  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     206  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                55     165  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               110     165  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1               101     200  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0                99     200  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                67     222  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               155     222  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1                51     222  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0               171     222  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                21     219  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               198     219  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                40     195  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               155     195  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 8       8  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       8  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1                 0      10  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          0                10      10  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       1                29      29  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       0                 0      29  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1               346     357  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                11     357  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               377     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               155     532  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         1              1029    1158  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         0               129    1158  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               313     371  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                58     371  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                99     109  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                10     109  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1               136     206  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     206  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                53     157  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               104     157  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1               101     201  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               100     201  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                66     219  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               153     219  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1                50     210  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0               160     210  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                20     218  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               198     218  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     188  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               150     188  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 8       8  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       8  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1                 0      10  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          0                10      10  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       1                25      25  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       0                 0      25  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1               338     350  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                12     350  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1               376     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               152     528  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         1              1031    1160  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         0               129    1160  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               319     379  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                60     379  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                96     109  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                13     109  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1               132     203  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                71     203  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                52     150  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                98     150  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1               101     201  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               100     201  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                66     219  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               153     219  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1                47     199  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0               152     199  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19     225  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     225  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                36     176  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               140     176  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1                 0       8  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          0                 8       8  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       1                26      26  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       0                 0      26  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               383     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               158     541  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         1              1014    1139  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         0               125    1139  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               295     347  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                52     347  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               131     201  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     201  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                52     149  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                97     149  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1               101     201  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               100     201  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                67     219  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               152     219  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1                42     187  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0               145     187  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                18     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               208     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     175  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               137     175  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 9       9  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       9  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1                 0       8  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          0                 8       8  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       1                16      16  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       0                 0      16  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               334     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               137     471  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         1               944    1050  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         0               106    1050  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               237     279  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                42     279  y_rate_len       


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
![](/tmp/f02a631c-28ac-4a5b-bbbe-496ae0f6a504/fd7a74e5-7a0f-4f6e-9feb-d94066e80815/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f02a631c-28ac-4a5b-bbbe-496ae0f6a504/fd7a74e5-7a0f-4f6e-9feb-d94066e80815/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f02a631c-28ac-4a5b-bbbe-496ae0f6a504/fd7a74e5-7a0f-4f6e-9feb-d94066e80815/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                3.3701076   3.2879429   3.4522722
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                3.2673151   3.1561661   3.3784642
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                3.8799756   3.6770252   4.0829261
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                3.8055325   3.6617556   3.9493093
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                3.4496711   3.2811604   3.6181819
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                3.2624982   3.1209021   3.4040942
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                3.4413082   3.3145089   3.5681074
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                3.7208567   3.5984661   3.8432474
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                2.9881382   2.8477333   3.1285431
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                3.0577372   2.9802602   3.1352143
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                3.2163596   3.0086409   3.4240783
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                3.1886757   3.0810401   3.2963113
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4048386   3.2292165   3.5804608
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.1872069   3.0942393   3.2801745
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                3.3695026   3.3106339   3.4283713
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                2.9240440   2.7812046   3.0668835
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                3.2540578   3.2122982   3.2958174
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                3.2647331   3.1890179   3.3404483
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                3.1058249   3.0523148   3.1593351
0-3 months     ki1101329-Keneba          GAMBIA                         0                    NA                3.0774589   2.9458039   3.2091138
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                3.5867099   3.5282602   3.6451597
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                3.5837282   3.4427086   3.7247477
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                3.6637897   3.6506774   3.6769020
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                3.6997447   3.6661215   3.7333679
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                3.2347125   3.0550875   3.4143374
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                2.7387927   2.1551870   3.3223984
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.9134758   1.8534425   1.9735091
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.9521915   1.8579341   2.0464490
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                2.0751195   1.9328743   2.2173647
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                2.1918961   2.0876281   2.2961640
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.8843910   1.7857110   1.9830710
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.8611032   1.7661754   1.9560310
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                1.8591339   1.7618220   1.9564458
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                2.0087740   1.9405352   2.0770127
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                2.0736834   1.9464706   2.2008963
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                2.0005323   1.9228173   2.0782472
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                2.1773204   1.9449365   2.4097044
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.9568292   1.8681818   2.0454766
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8066616   1.6368857   1.9764376
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8514527   1.7736407   1.9292647
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.8959468   1.8172862   1.9746075
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                2.0175913   1.4898496   2.5453330
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                1.9743304   1.9356987   2.0129621
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                1.9459942   1.8781235   2.0138649
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                2.0011913   1.9572683   2.0451143
3-6 months     ki1101329-Keneba          GAMBIA                         0                    NA                1.9377677   1.8224084   2.0531269
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.7258057   1.6805610   1.7710505
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.6555937   1.5577521   1.7534353
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                1.9193938   1.9051651   1.9336225
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                1.8885259   1.8459269   1.9311250
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.2480490   1.1964571   1.2996409
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.2309795   1.1630144   1.2989445
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.4953383   1.2964984   1.6941781
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.4750485   1.3848073   1.5652896
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.2254643   1.1453660   1.3055626
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.2682815   1.1943229   1.3422401
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                1.3895920   1.3113286   1.4678553
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                1.3608166   1.3062580   1.4153753
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                1.3646414   1.2531535   1.4761293
6-9 months     ki0047075b-MAL-ED         PERU                           0                    NA                1.3075865   1.2440086   1.3711644
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.1853736   1.0116401   1.3591071
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.4088404   1.3375538   1.4801271
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1670704   0.9824411   1.3516997
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1631152   1.0773545   1.2488759
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.2109523   1.1268945   1.2950101
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.0649253   0.7601232   1.3697273
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                1.2735581   1.2440592   1.3030569
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                1.3019887   1.2542821   1.3496953
6-9 months     ki1101329-Keneba          GAMBIA                         1                    NA                1.4014831   1.3427947   1.4601714
6-9 months     ki1101329-Keneba          GAMBIA                         0                    NA                1.3728057   1.2133343   1.5322771
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.3185965   1.2632553   1.3739376
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.2917903   1.2018243   1.3817563
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.9934897   0.9436550   1.0433244
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.9832060   0.9155045   1.0509076
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.3069777   1.1842231   1.4297323
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.2870784   1.1844877   1.3896690
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.9199854   0.8650805   0.9748904
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                1.0201586   0.9644310   1.0758861
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                1.0342524   0.9568446   1.1116602
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                1.1036736   1.0536874   1.1536598
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                1.0714896   0.9639310   1.1790483
9-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                1.1069445   1.0485468   1.1653422
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.2008324   0.9531880   1.4484768
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.9824445   0.9148109   1.0500781
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7338947   0.5885265   0.8792628
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8318571   0.7309473   0.9327669
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.9762531   0.9017346   1.0507715
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.3564739   1.0358497   1.6770981
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                1.0322311   1.0009173   1.0635450
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                1.0927211   1.0425706   1.1428716
9-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                0.9771604   0.9301786   1.0241421
9-12 months    ki1101329-Keneba          GAMBIA                         0                    NA                1.0164185   0.8902929   1.1425440
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.9796515   0.9343983   1.0249046
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.1028639   1.0274678   1.1782600
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.0732648   0.9808085   1.1657211
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.3483344   0.8151319   1.8815370
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8875281   0.8396566   0.9353997
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.9936532   0.9174052   1.0699013
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.1543080   1.0605346   1.2480814
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.1464364   1.0681986   1.2246741
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8789523   0.8170742   0.9408304
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.9300831   0.8698715   0.9902948
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.9351776   0.8639111   1.0064441
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.9502722   0.9011292   0.9994152
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8932381   0.8076965   0.9787796
12-15 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8892696   0.8345833   0.9439559
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.9341866   0.7547211   1.1136522
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.9186298   0.8554686   0.9817911
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7446308   0.6139563   0.8753053
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8906509   0.8092561   0.9720457
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.8475489   0.7723789   0.9227190
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.5882719   0.3290880   0.8474557
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.9457576   0.9152127   0.9763026
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.9898433   0.9394193   1.0402673
12-15 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.9562328   0.9219964   0.9904691
12-15 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.8528242   0.7704048   0.9352435
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8739243   0.8436769   0.9041717
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.8511972   0.7687853   0.9336091
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.9818126   0.9075342   1.0560909
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.0856490   0.8976031   1.2736949
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8394162   0.7907025   0.8881300
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.8028225   0.7461636   0.8594813
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.9765727   0.8657546   1.0873907
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.9857626   0.9082793   1.0632458
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8234623   0.7716636   0.8752609
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8863570   0.8297758   0.9429381
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.8013064   0.7234792   0.8791335
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8558961   0.8044640   0.9073282
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.7996890   0.7089778   0.8904002
15-18 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8673323   0.8183921   0.9162724
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8280021   0.6502370   1.0057672
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8874551   0.8311747   0.9437355
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7054898   0.5432815   0.8676981
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6687658   0.5972583   0.7402732
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.8867079   0.8293956   0.9440202
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.0927792   0.5595774   1.6259809
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.8697837   0.8408622   0.8987052
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.8195731   0.7743637   0.8647825
15-18 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.8868731   0.8507907   0.9229555
15-18 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.8340820   0.7252037   0.9429603
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.7869227   0.7449389   0.8289064
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6979259   0.6374207   0.7584312
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.9439944   0.8647389   1.0232499
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.0794052   0.9045771   1.2542334
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8025799   0.7553142   0.8498456
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.8350909   0.7816746   0.8885072
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.8906649   0.7561010   1.0252288
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.9365106   0.8513438   1.0216774
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8476950   0.7955898   0.8998002
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8995949   0.8444547   0.9547351
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.8190577   0.7503556   0.8877599
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8134819   0.7653265   0.8616373
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8849399   0.7958105   0.9740694
18-21 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8368311   0.7849855   0.8886767
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8290795   0.6794906   0.9786685
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.7773207   0.7169154   0.8377260
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7700720   0.5998128   0.9403312
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7358281   0.6542325   0.8174236
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.8321008   0.8032000   0.8610017
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.8552280   0.8128034   0.8976527
18-21 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.8119575   0.7722497   0.8516654
18-21 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.8516843   0.7241865   0.9791821
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.9115698   0.8652164   0.9579232
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.9519458   0.8823397   1.0215520
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.7948448   0.7466733   0.8430163
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.7323008   0.6814756   0.7831259
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.7677149   0.6871170   0.8483127
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.8034182   0.7471122   0.8597242
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8308561   0.7851041   0.8766081
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8306355   0.7821313   0.8791397
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.7979333   0.7254276   0.8704390
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.7796666   0.7284829   0.8308504
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.7289643   0.6342763   0.8236522
21-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.7734495   0.7184469   0.8284521
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8394194   0.7142169   0.9646220
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8422738   0.7854693   0.8990783
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7741699   0.6440481   0.9042917
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7042094   0.6188076   0.7896111
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.7611847   0.7307788   0.7915906
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.7704432   0.7238431   0.8170433
21-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.7144417   0.6758986   0.7529848
21-24 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.6930133   0.6110749   0.7749517
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8032651   0.7453501   0.8611802
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.7094516   0.6047596   0.8141437


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                3.3300100   3.2632400   3.3967800
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                3.8333086   3.7172183   3.9493989
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                3.3581259   3.2511263   3.4651254
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                3.6149130   3.5218465   3.7079794
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                3.0514630   2.9842485   3.1186774
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                3.1964081   3.0976125   3.2952037
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2460048   3.1627741   3.3292354
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                3.3522434   3.2847848   3.4197021
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1101329-Keneba          GAMBIA                         NA                   NA                3.1023487   3.0525201   3.1521774
0-3 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                3.5832888   3.5291425   3.6374351
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                3.6671582   3.6544756   3.6798407
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                3.2111724   3.0390342   3.3833107
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.9360220   1.8863911   1.9856528
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                2.1610058   2.0768189   2.2451928
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                1.8774058   1.8092128   1.9455987
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.9604886   1.9037186   2.0172585
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                2.0146923   1.9480408   2.0813438
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.9673270   1.8846989   2.0499551
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8384078   1.7678309   1.9089846
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.9051097   1.8384221   1.9717974
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1101329-Keneba          GAMBIA                         NA                   NA                1.9933115   1.9522179   2.0344050
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                1.7175472   1.6762113   1.7588831
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                1.9166214   1.9029983   1.9302445
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.2426951   1.2021480   1.2832422
6-9 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.4793615   1.3932814   1.5654415
6-9 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                1.2410939   1.1870908   1.2950970
6-9 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.3593977   1.3145109   1.4042846
6-9 months     ki0047075b-MAL-ED         PERU                           NA                   NA                1.3181643   1.2633979   1.3729307
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.3866251   1.3204306   1.4528196
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1862735   1.1092792   1.2632679
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.2100652   1.1296030   1.2905275
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1101329-Keneba          GAMBIA                         NA                   NA                1.3980094   1.3431582   1.4528606
6-9 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                1.3149164   1.2666599   1.3631729
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.9927203   0.9534705   1.0319702
9-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.2871495   1.2069822   1.3673169
9-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.9664571   0.9272553   1.0056589
9-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.0863279   1.0443920   1.1282637
9-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                1.0996556   1.0484043   1.1509069
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.9974431   0.9321487   1.0627375
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8135761   0.7280408   0.8991114
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.9826276   0.9088962   1.0563590
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1101329-Keneba          GAMBIA                         NA                   NA                0.9817054   0.9381761   1.0252348
9-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.9981577   0.9587526   1.0375629
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.0827638   1.0008916   1.1646360
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.9168218   0.8756400   0.9580036
12-15 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.1479969   1.0880713   1.2079226
12-15 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.9027484   0.8605827   0.9449141
12-15 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.9510803   0.9108264   0.9913342
12-15 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8899324   0.8436019   0.9362629
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.9200282   0.8606688   0.9793876
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8603058   0.7910045   0.9296071
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.8406400   0.7684485   0.9128315
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.9467220   0.9149021   0.9785418
12-15 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.8703223   0.8418462   0.8987983
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.9942404   0.9259295   1.0625513
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8229575   0.7855057   0.8604093
15-18 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.9818884   0.9203285   1.0434482
15-18 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8524809   0.8141426   0.8908193
15-18 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.8379671   0.7952249   0.8807093
15-18 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8524194   0.8100116   0.8948273
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.8824996   0.8291590   0.9358403
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6765672   0.6111365   0.7419980
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.8909184   0.8304593   0.9513775
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.8844374   0.8501048   0.9187701
15-18 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.7714871   0.7347479   0.8082263
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.9624250   0.8894872   1.0353628
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8119236   0.7768456   0.8470016
18-21 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.9218418   0.8499673   0.9937164
18-21 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8718128   0.8338464   0.9097793
18-21 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.8188898   0.7796721   0.8581075
18-21 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8436364   0.7988407   0.8884321
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.7825058   0.7256746   0.8393371
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7427314   0.6697155   0.8157473
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.8159048   0.7782859   0.8535238
18-21 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.9164610   0.8758269   0.9570951
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.7650086   0.7291204   0.8008969
21-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.7910255   0.7450530   0.8369980
21-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8277879   0.7947160   0.8608598
21-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.7874809   0.7457868   0.8291749
21-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.7633557   0.7160871   0.8106244
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.8419384   0.7887410   0.8951359
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7195266   0.6482537   0.7907995
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.7118510   0.6762870   0.7474150
21-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.7890401   0.7373935   0.8406867


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1027924   -0.2394041    0.0338192
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0744432   -0.3243207    0.1754344
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    1                 -0.1871730   -0.4113302    0.0369843
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.2795486    0.1012132    0.4578839
0-3 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0695991   -0.0914222    0.2306203
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0276839   -0.2614519    0.2060841
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2176318   -0.4171677   -0.0180958
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.4454586   -0.5939152   -0.2970019
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0106753   -0.0757865    0.0971372
0-3 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0283661   -0.1695566    0.1128245
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0029818   -0.1548193    0.1488558
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0359550    0.0016300    0.0702800
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.4959197   -1.1088401    0.1170006
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0387158   -0.0758814    0.1533129
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1167766   -0.0598979    0.2934511
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0232878   -0.1605423    0.1139668
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1496401    0.0308567    0.2684235
3-6 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           0                    1                 -0.0731512   -0.2220875    0.0757851
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.2204912   -0.4693590    0.0283765
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0447911   -0.1417998    0.2313820
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.1216445   -0.4499236    0.6932125
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0283362   -0.1060971    0.0494248
3-6 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0634237   -0.1866373    0.0597900
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0702120   -0.1772922    0.0368682
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0308679   -0.0753060    0.0135703
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0170695   -0.1025922    0.0684531
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0202898   -0.2406010    0.2000214
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0428172   -0.0667602    0.1523945
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0287753   -0.1248315    0.0672808
6-9 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU                           0                    1                 -0.0570549   -0.1865456    0.0724358
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.2234668    0.0359348    0.4109988
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0039553   -0.2106549    0.2027444
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.1460270   -0.4785521    0.1864982
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0284306   -0.0271784    0.0840396
6-9 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0286773   -0.1992189    0.1418642
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0268062   -0.1325830    0.0789706
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0102836   -0.0963059    0.0757386
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0198993   -0.1803125    0.1405138
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.1001731    0.0214092    0.1789370
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0694212   -0.0229998    0.1618422
9-12 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0354549   -0.0871351    0.1580448
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.2183879   -0.4751816    0.0384058
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0979624   -0.0796714    0.2755963
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.3802208    0.0971972    0.6632444
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0604900    0.0022762    0.1187038
9-12 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA                         0                    1                  0.0392581   -0.0960216    0.1745378
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.1232125    0.0347519    0.2116730
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.2750696   -0.2610498    0.8111890
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.1061251    0.0160200    0.1962302
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0078716   -0.1304654    0.1147221
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0511309   -0.0363013    0.1385630
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0150946   -0.0721520    0.1023413
12-15 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0039685   -0.1055923    0.0976552
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0155568   -0.2062513    0.1751376
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1460201   -0.0082766    0.3003168
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.2592771   -0.5410201    0.0224660
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0440857   -0.0147661    0.1029374
12-15 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.1034086   -0.1927113   -0.0141058
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0227271   -0.1105183    0.0650641
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.1038365   -0.0983971    0.3060701
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0365938   -0.1113905    0.0382030
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0091899   -0.1268838    0.1452636
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0628947   -0.0138684    0.1396577
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0545897   -0.0388352    0.1480146
15-18 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0676433   -0.0356069    0.1708934
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0594530   -0.1271925    0.2460985
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0367240   -0.2142541    0.1408060
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.2060712   -0.3184693    0.7306118
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0502106   -0.1042353    0.0038141
15-18 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.0527911   -0.1674038    0.0618216
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0889967   -0.1628701   -0.0151233
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.1354108   -0.0586283    0.3294499
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0325110   -0.0401221    0.1051440
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0458457   -0.1131345    0.2048259
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0518998   -0.0240129    0.1278126
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0055758   -0.0897171    0.0785655
18-21 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0481089   -0.1515779    0.0553602
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0517588   -0.2116120    0.1080943
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0342439   -0.2229768    0.1544890
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0231272   -0.0279982    0.0742526
18-21 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA                         0                    1                  0.0397268   -0.0944988    0.1739523
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0403760   -0.0434350    0.1241871
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0625440   -0.1328286    0.0077406
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0357033   -0.0629813    0.1343880
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0002206   -0.0673373    0.0668961
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0182667   -0.1073570    0.0708236
21-24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0444852   -0.0646224    0.1535928
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0028544   -0.1343263    0.1400350
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0699605   -0.2261555    0.0862345
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0092585   -0.0463924    0.0649095
21-24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.0214284   -0.1119283    0.0690715
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0938135   -0.2134998    0.0258728


### Parameter: PAR


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0400975   -0.0890130    0.0088180
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0466670   -0.2197210    0.1263870
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0915452   -0.2041430    0.0210525
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1736048    0.0528499    0.2943598
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0633248   -0.0637851    0.1904347
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0199515   -0.2315652    0.1916623
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1588339   -0.3160190   -0.0016487
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0172592   -0.0279700   -0.0065484
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0036232   -0.0222432    0.0294897
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0034762   -0.0212228    0.0142704
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0034211   -0.0288494    0.0220072
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0033685    0.0000557    0.0066813
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0235400   -0.0803187    0.0332386
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0225462   -0.0167964    0.0618889
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0858864   -0.0341296    0.2059023
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0069852   -0.0721386    0.0581682
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1013546    0.0183345    0.1843748
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0589911   -0.1739177    0.0559355
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.2099934   -0.4385225    0.0185358
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0317462   -0.1157572    0.1792495
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0091629   -0.0111747    0.0295005
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0085847   -0.0313142    0.0141449
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0078799   -0.0219782    0.0062185
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0082585   -0.0260839    0.0095668
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0027724   -0.0066671    0.0011223
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0053539   -0.0355380    0.0248302
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0159768   -0.1662737    0.1343201
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0156295   -0.0375662    0.0688252
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0301942   -0.0976316    0.0372432
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0464771   -0.1471380    0.0541838
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.2012515    0.0312675    0.3712354
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0192031   -0.1460906    0.1844968
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0008870   -0.0169575    0.0151834
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0088604   -0.0074085    0.0251293
6-9 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0034736   -0.0217273    0.0147801
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0036801   -0.0214617    0.0141015
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0007693   -0.0310269    0.0294882
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0198282   -0.1264796    0.0868232
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0464716    0.0065810    0.0863623
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0520755   -0.0127157    0.1168667
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0281660   -0.0657052    0.1220372
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.2033893   -0.4359996    0.0292211
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0796814   -0.0622999    0.2216627
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0063745   -0.0031234    0.0158725
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0177439    0.0006149    0.0348728
9-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0045451   -0.0086497    0.0177398
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0185063    0.0036245    0.0333881
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0094990   -0.0254154    0.0444134
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0292937   -0.0022067    0.0607940
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0063111   -0.0881689    0.0755468
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0237961   -0.0199599    0.0675522
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0159026   -0.0447752    0.0765805
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0033057   -0.0826081    0.0759968
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0141585   -0.1875457    0.1592288
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1156749   -0.0088337    0.2401836
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0069089   -0.0163630    0.0025452
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0139924   -0.0031288    0.0311136
12-15 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0095108   -0.0196993    0.0006777
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0036021   -0.0171155    0.0099114
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0124278   -0.0113579    0.0362136
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0164587   -0.0422121    0.0092946
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0053157   -0.0866823    0.0973137
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0290187   -0.0094093    0.0674466
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0366607   -0.0289613    0.1022827
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0527304   -0.0270639    0.1325248
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0544975   -0.1161832    0.2251783
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0289226   -0.1736369    0.1157918
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0042105   -0.0123389    0.0207598
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0136839   -0.0290411    0.0016733
15-18 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0024357   -0.0153747    0.0105034
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0154356   -0.0274048   -0.0034663
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0184305   -0.0064881    0.0433492
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0093437   -0.0163235    0.0350109
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0311769   -0.0732935    0.1356474
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0241178   -0.0137114    0.0619471
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0001679   -0.0591985    0.0588626
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0413036   -0.1207262    0.0381190
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0465737   -0.1943088    0.1011615
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0273407   -0.1794358    0.1247544
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0072369   -0.0076845    0.0221583
18-21 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0039473   -0.0104359    0.0183304
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0048912   -0.0074944    0.0172769
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0298361   -0.0557228   -0.0039494
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0233107   -0.0412950    0.0879163
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0030682   -0.0369461    0.0308096
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0104524   -0.0725310    0.0516262
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0343915   -0.0513838    0.1201667
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0025190   -0.1246099    0.1296479
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0546433   -0.1774804    0.0681939
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0019544   -0.0141644    0.0180731
21-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0025907   -0.0113971    0.0062157
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0142250   -0.0324776    0.0040276
