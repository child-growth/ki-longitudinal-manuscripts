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

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        impfloor    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              220     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               19     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              208     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                2     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          1              217     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          0               15     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               99     224  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          0              125     224  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           1               58     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           0              212     270  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              234     254  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     254  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               13     231  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              218     231  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              229     229  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0     229  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          1              296     296  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          0                0     296  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              501     563  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               62     563  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              586     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               54     640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              550     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              175     725  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               74     398  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0              324     398  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           1               27      29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           0                2      29  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             1346   20241  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0            18895   20241  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              264    2496  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             2232    2496  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              215     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               18     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              206     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                2     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          1              215     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          0               15     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              101     227  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          0              126     227  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           1               58     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           0              209     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              222     241  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     241  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               11     237  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              226     237  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              224     224  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0     224  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          1              299     299  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          0                0     299  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              462     520  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               58     520  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              554     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               47     601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              527     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              175     702  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               70     370  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              300     370  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           1              200     214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           0               14     214  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             1096   12690  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            11594   12690  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              198    1817  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             1619    1817  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1              208     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               16     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              196     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                2     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          1              215     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          0               15     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          1              100     223  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          0              123     223  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           1               57     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           0              188     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              213     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               10     223  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              213     223  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              226     226  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0     226  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          1              306     306  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          0                0     306  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1              442     497  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0               55     497  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              532     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               44     576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              518     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              175     693  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               68     376  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0              308     376  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           1              200     214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           0               14     214  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1              377    3070  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0             2693    3070  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              208     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               17     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              192     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                2     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          1              213     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          0               14     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          1               99     222  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          0              123     222  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           1               54     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           0              181     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              214     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     222  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              210     222  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              228     228  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     228  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          1              302     302  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          0                0     302  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              425     479  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               54     479  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              524     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               45     569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              510     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              173     683  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               67     358  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0              291     358  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           1              198     212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           0               14     212  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              407    3515  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             3108    3515  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              182     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                2     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          1              212     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          0               14     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          1               99     223  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          0              124     223  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           1               51     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           0              173     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              208     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              212     224  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              234     234  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     234  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          1              294     294  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          0                0     294  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1              410     460  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     460  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              493     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               44     537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              495     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              171     666  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               66     355  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0              289     355  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           1              185     199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           0               14     199  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1              406    3548  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0             3142    3548  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              173     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                2     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          1              211     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          0               15     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          1               96     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          0              124     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           1               48     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           0              166     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              206     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     218  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              206     218  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              228     228  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     228  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          1              285     285  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          0                0     285  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1              400     448  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0               48     448  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              490     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               43     533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              435     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              170     605  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               69     372  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0              303     372  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           1              176     189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           0               13     189  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1              403    3507  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0             3104    3507  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1              193     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               16     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              165     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                2     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          1              211     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          0               15     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          1               96     220  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          0              124     220  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           1               48     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           0              154     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              214     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     206  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              194     206  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              217     217  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     217  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          1              284     284  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          0                0     284  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1              372     421  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0               49     421  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              497     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               45     542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              382     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              165     547  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               64     343  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0              279     343  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           1              171     183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           0               12     183  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              191     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               16     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              163     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          1              211     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          0               15     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          1               97     220  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          0              123     220  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           1               45     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           0              144     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              217     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     204  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              192     204  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              216     216  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     216  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          1              292     292  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          0                0     292  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              363     410  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               47     410  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              445     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               40     485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              327     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              166     493  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               51     245  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0              194     245  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           1               33      38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           0                5      38  y_rate_wtkg      


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
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/a8dae2c8-778b-4048-8ee2-e16d134f13e3/8babfb9e-d5a8-4f1d-ab9c-ff4828fdefec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a8dae2c8-778b-4048-8ee2-e16d134f13e3/8babfb9e-d5a8-4f1d-ab9c-ff4828fdefec/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a8dae2c8-778b-4048-8ee2-e16d134f13e3/8babfb9e-d5a8-4f1d-ab9c-ff4828fdefec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.8785533    0.8538062   0.9033004
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.8693066    0.7733007   0.9653124
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                0.7629350    0.7404143   0.7854557
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    NA                0.7050174    0.5686805   0.8413542
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                0.9778041    0.9352648   1.0203434
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                0.9547674    0.9199867   0.9895481
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                1.0290522    0.9637890   1.0943154
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                0.9566710    0.9286458   0.9846962
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.9447210    0.9155622   0.9738797
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.9457486    0.8453309   1.0461664
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8594094    0.7322241   0.9865946
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8841474    0.8524129   0.9158818
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.8229504    0.8050164   0.8408844
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7636039    0.7186405   0.8085674
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.9084929    0.8933347   0.9236511
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8312121    0.7739141   0.8885100
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8803321    0.8637362   0.8969279
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.9140605    0.8758450   0.9522760
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.8093045    0.7628013   0.8558077
0-3 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.8253305    0.8034862   0.8471748
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.8829105    0.8690193   0.8968017
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.8564261    0.8533060   0.8595463
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.7302493    0.6780101   0.7824886
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.7408701    0.7264062   0.7553340
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.4788795    0.4615054   0.4962536
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.3774127    0.3166691   0.4381563
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                0.4446712    0.4266941   0.4626483
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    NA                0.4495666    0.3822185   0.5169148
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                0.5163666    0.4830887   0.5496444
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                0.5295516    0.5073174   0.5517859
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                0.4964773    0.4585066   0.5344481
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                0.4986924    0.4767964   0.5205884
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.4671753    0.4405279   0.4938227
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.4271751    0.3187574   0.5355928
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3757000    0.2547199   0.4966801
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4582679    0.4332622   0.4832736
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.4617009    0.4430608   0.4803410
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.4538468    0.4082502   0.4994434
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.4911783    0.4773463   0.5050103
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.4670018    0.4300971   0.5039065
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.4995002    0.4867194   0.5122809
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.4947694    0.4688558   0.5206830
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.5278143    0.4879592   0.5676694
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.4979316    0.4799168   0.5159465
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                0.5893405    0.5673655   0.6113155
3-6 months     ki1114097-CONTENT       PERU                           0                    NA                0.5875514    0.4912255   0.6838774
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.4442006    0.4325758   0.4558254
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.4406294    0.4372849   0.4439740
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.4606396    0.4303421   0.4909371
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.4371740    0.4274969   0.4468511
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.2450061    0.2295674   0.2604447
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.2036511    0.1675690   0.2397332
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    NA                0.2317777    0.2162138   0.2473416
6-9 months     ki0047075b-MAL-ED       INDIA                          0                    NA                0.2384685    0.1907833   0.2861538
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                0.2786401    0.2524431   0.3048371
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                0.2600426    0.2434455   0.2766397
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                0.2751235    0.2415673   0.3086797
6-9 months     ki0047075b-MAL-ED       PERU                           0                    NA                0.2550390    0.2376885   0.2723895
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.2555491    0.2333426   0.2777555
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.2921917    0.2258802   0.3585031
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1735102    0.0946859   0.2523345
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2410242    0.2158184   0.2662300
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.2400597    0.2254898   0.2546296
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.2242794    0.1808124   0.2677464
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.2505803    0.2378561   0.2633044
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.2336310    0.2004344   0.2668276
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.2634778    0.2508090   0.2761465
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.2841156    0.2627300   0.3055012
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.1880284    0.1607882   0.2152687
6-9 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.1906605    0.1724334   0.2088876
6-9 months     ki1114097-CONTENT       PERU                           1                    NA                0.3224847    0.3022116   0.3427578
6-9 months     ki1114097-CONTENT       PERU                           0                    NA                0.2931497    0.2225388   0.3637606
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.2460207    0.2245094   0.2675320
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.2387103    0.2329408   0.2444799
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.1715042    0.1569567   0.1860518
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.1873340    0.1466828   0.2279852
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                0.1805276    0.1660625   0.1949928
9-12 months    ki0047075b-MAL-ED       INDIA                          0                    NA                0.1334943    0.0693028   0.1976858
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1857453    0.1573697   0.2141209
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                0.1826416    0.1624220   0.2028611
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                0.1978004    0.1628432   0.2327575
9-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                0.1841788    0.1670817   0.2012758
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.2116463    0.1879839   0.2353086
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.2420490    0.1923557   0.2917422
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1955413    0.1385568   0.2525259
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1638029    0.1424699   0.1851358
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.1639742    0.1497979   0.1781505
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.1552310    0.1189232   0.1915388
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.1785775    0.1687041   0.1884508
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1654196    0.1399464   0.1908928
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1963192    0.1842328   0.2084056
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.2049185    0.1836656   0.2261715
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.1444224    0.1135203   0.1753246
9-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.1420229    0.1251792   0.1588667
9-12 months    ki1114097-CONTENT       PERU                           1                    NA                0.2252177    0.2067437   0.2436917
9-12 months    ki1114097-CONTENT       PERU                           0                    NA                0.2034206    0.1297005   0.2771407
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.1589733    0.1453986   0.1725480
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.1542456    0.1497350   0.1587562
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.1401272    0.1244029   0.1558516
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.0829108    0.0070578   0.1587637
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.1769251    0.1605351   0.1933150
12-15 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.1711218    0.1071828   0.2350607
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1631282    0.1311437   0.1951128
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.1492742    0.1293681   0.1691803
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.1520623    0.1228622   0.1812624
12-15 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.1387587    0.1188196   0.1586977
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.1885959    0.1642603   0.2129315
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.1686394    0.0266279   0.3106508
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2300179    0.1115679   0.3484680
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1575522    0.1319293   0.1831751
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.1299692    0.1168616   0.1430769
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.1387309    0.1091079   0.1683539
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.1795058    0.1672029   0.1918087
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1998533    0.1620787   0.2376279
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1710195    0.1585781   0.1834609
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1401545    0.1168316   0.1634774
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.2106855    0.1736063   0.2477647
12-15 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.1679684    0.1510570   0.1848798
12-15 months   ki1114097-CONTENT       PERU                           1                    NA                0.1798840    0.1603609   0.1994070
12-15 months   ki1114097-CONTENT       PERU                           0                    NA                0.1929598    0.1374741   0.2484456
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.1380661    0.1237199   0.1524123
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.1297841    0.1256791   0.1338890
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.1421771    0.1263315   0.1580227
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.1817178    0.1109548   0.2524807
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.1618338    0.1461379   0.1775297
15-18 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.1713014    0.0957096   0.2468933
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1970181    0.1746164   0.2194198
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.1498945    0.1288506   0.1709383
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.1483393    0.1115408   0.1851377
15-18 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.1451596    0.1232875   0.1670316
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.2269517    0.1979347   0.2559686
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.1793071    0.0481160   0.3104982
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0564030   -0.0402075   0.1530136
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1414716    0.1177549   0.1651883
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.1545370    0.1395617   0.1695123
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.1310589    0.0748215   0.1872963
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.1596434    0.1473211   0.1719656
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1138027    0.0741381   0.1534673
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1587257    0.1455211   0.1719303
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1746457    0.1571986   0.1920928
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.2240163    0.1854594   0.2625733
15-18 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.2187992    0.1983926   0.2392058
15-18 months   ki1114097-CONTENT       PERU                           1                    NA                0.1710774    0.1520545   0.1901004
15-18 months   ki1114097-CONTENT       PERU                           0                    NA                0.1599157    0.0678275   0.2520039
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.1491832    0.1333033   0.1650631
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.1592484    0.1543197   0.1641770
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.1437758    0.1262793   0.1612723
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.1271341    0.0521379   0.2021302
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.1725378    0.1574755   0.1876001
18-21 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.1520475    0.0491059   0.2549891
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1564903    0.1267557   0.1862249
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.1485289    0.1276142   0.1694435
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.1751913    0.1326630   0.2177196
18-21 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.1570007    0.1355794   0.1784220
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.1774952    0.1499637   0.2050268
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.1749592    0.0664963   0.2834220
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1132148    0.0371009   0.1893287
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1474831    0.1213598   0.1736064
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.1734755    0.1563717   0.1905792
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.1651901    0.1147169   0.2156634
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.1297112    0.1177703   0.1416521
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1655546    0.1246466   0.2064627
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1414344    0.1282450   0.1546238
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1435085    0.1199415   0.1670754
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.1731291    0.1379208   0.2083373
18-21 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.1562078    0.1356857   0.1767299
18-21 months   ki1114097-CONTENT       PERU                           1                    NA                0.1913909    0.1714450   0.2113367
18-21 months   ki1114097-CONTENT       PERU                           0                    NA                0.2057814    0.1518150   0.2597478
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.1493230    0.1338995   0.1647466
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.1584962    0.0863662   0.2306263
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.1600595    0.1465640   0.1735550
21-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.0952966    0.0316645   0.1589287
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1650436    0.1335888   0.1964983
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.1776220    0.1503547   0.2048893
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.1827136    0.1439216   0.2215057
21-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.1832418    0.1602148   0.2062687
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.1857822    0.1614302   0.2101341
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.2189903    0.1000408   0.3379397
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1894079    0.0750106   0.3038053
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1392543    0.1101850   0.1683235
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.1398229    0.1239820   0.1556639
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.1945312    0.1435061   0.2455563
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.1397862    0.1280017   0.1515708
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1733797    0.1249527   0.2218066
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1666979    0.1504517   0.1829440
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1850037    0.1622639   0.2077436
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.1017943    0.0318144   0.1717742
21-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.1921649    0.1575783   0.2267515
21-24 months   ki1114097-CONTENT       PERU                           1                    NA                0.2020699    0.1469064   0.2572333
21-24 months   ki1114097-CONTENT       PERU                           0                    NA                0.2265791    0.1476816   0.3054766


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8772390   0.8535646   0.9009134
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                0.7600956   0.7374283   0.7827630
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.9610194   0.9339338   0.9881050
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.9711748   0.9453625   0.9969872
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.9442402   0.9164250   0.9720554
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8831857   0.8524650   0.9139064
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.8166154   0.7997440   0.8334868
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.8225900   0.8032347   0.8419453
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                0.8576656   0.8546477   0.8606835
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.7394732   0.7257200   0.7532264
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.5259564   0.5059921   0.5459206
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.4668324   0.4408845   0.4927803
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4569883   0.4327269   0.4812498
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.4601380   0.4429288   0.4773471
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.5013279   0.4853427   0.5173130
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                0.5883606   0.5672514   0.6094698
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                0.4414336   0.4384576   0.4444096
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.4391710   0.4303780   0.4479640
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2685740   0.2540269   0.2831212
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388507   0.2145606   0.2631408
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2366132   0.2228723   0.2503541
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.1897505   0.1756658   0.2038351
6-9 months     ki1114097-CONTENT       PERU                           NA                   NA                0.3203724   0.3008854   0.3398595
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.2398182   0.2345442   0.2450921
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1866112   0.1718660   0.2013565
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668661   0.1464634   0.1872687
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1630760   0.1499069   0.1762450
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.1431658   0.1287483   0.1575834
9-12 months    ki1114097-CONTENT       PERU                           NA                   NA                0.2242885   0.2061680   0.2424089
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.1545268   0.1502594   0.1587942
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1556525   0.1388069   0.1724982
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1593496   0.1344315   0.1842676
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1310872   0.1190907   0.1430837
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.1747454   0.1597649   0.1897259
12-15 months   ki1114097-CONTENT       PERU                           NA                   NA                0.1810659   0.1624244   0.1997074
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.1304847   0.1263673   0.1346021
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1732825   0.1576223   0.1889428
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1411637   0.1181864   0.1641411
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1528611   0.1382886   0.1674335
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.2187099   0.2014496   0.2359702
15-18 months   ki1114097-CONTENT       PERU                           NA                   NA                0.1713509   0.1529966   0.1897053
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.1595171   0.1548186   0.1642157
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1494187   0.1314602   0.1673773
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1455073   0.1204358   0.1705787
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1728012   0.1566602   0.1889421
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.1583779   0.1402777   0.1764780
18-21 months   ki1114097-CONTENT       PERU                           NA                   NA                0.1921232   0.1732877   0.2109588
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1691582   0.1486761   0.1896402
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1418529   0.1139325   0.1697734
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1410750   0.1259441   0.1562059
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.1719511   0.1420206   0.2018815
21-24 months   ki1114097-CONTENT       PERU                           NA                   NA                0.2052948   0.1562051   0.2543845


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0092467   -0.1083028    0.0898094
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0579176   -0.1961343    0.0802990
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0230367   -0.0782484    0.0321751
0-3 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0723812   -0.1435897   -0.0011726
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0010277   -0.1035809    0.1056363
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0247380   -0.1070988    0.1565749
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0593464   -0.1074100   -0.0112828
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0772808   -0.1366568   -0.0179049
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0337284   -0.0076324    0.0750892
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0160260   -0.0354207    0.0674727
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0264843   -0.0406356   -0.0123331
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                  0.0106208   -0.0420660    0.0633076
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.1014668   -0.1648923   -0.0380412
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    1                  0.0048955   -0.0648303    0.0746212
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0131851   -0.0267870    0.0531572
3-6 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0                    1                  0.0022151   -0.0416718    0.0461020
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0400002   -0.1514095    0.0714092
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0825679   -0.0410747    0.2062104
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0078541   -0.0571930    0.0414849
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0241765   -0.0637312    0.0153782
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0047308   -0.0335219    0.0240604
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0298827   -0.0735412    0.0137759
3-6 months     ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           0                    1                 -0.0017891   -0.1007513    0.0971732
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0035711   -0.0154328    0.0082905
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0234656   -0.0550868    0.0081556
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0413550   -0.0807455   -0.0019644
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA                          0                    1                  0.0066908   -0.0435572    0.0569389
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0185975   -0.0496312    0.0124361
6-9 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0200845   -0.0579432    0.0177741
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0366426   -0.0332757    0.1065609
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0675140   -0.0152722    0.1503001
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0157803   -0.0616950    0.0301345
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0169492   -0.0525238    0.0186254
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0206378   -0.0041742    0.0454499
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0026321   -0.0301628    0.0354270
6-9 months     ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU                           0                    1                 -0.0293350   -0.1027329    0.0440628
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0073104   -0.0294331    0.0148124
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0158298   -0.0276388    0.0592984
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0470333   -0.1129569    0.0188902
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0031037   -0.0387193    0.0325119
9-12 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.0136216   -0.0526779    0.0254348
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0304027   -0.0243597    0.0851651
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0317385   -0.0929327    0.0294558
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0087432   -0.0476071    0.0301207
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0131579   -0.0404546    0.0141388
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0085993   -0.0158706    0.0330693
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0023995   -0.0374819    0.0326829
9-12 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU                           0                    1                 -0.0217970   -0.0979281    0.0543341
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0047277   -0.0188524    0.0093970
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0572165   -0.1347160    0.0202831
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0058033   -0.0719731    0.0603665
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0138541   -0.0515937    0.0238856
12-15 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0133036   -0.0487195    0.0221123
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0199565   -0.1641937    0.1242806
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0724657   -0.1935760    0.0486445
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0087617   -0.0238354    0.0413587
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0203475   -0.0194050    0.0600999
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0308650   -0.0572697   -0.0044602
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0427171   -0.0834468   -0.0019874
12-15 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU                           0                    1                  0.0130759   -0.0457939    0.0719456
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0082820   -0.0230563    0.0064923
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0395406   -0.0326166    0.1116978
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA                          0                    1                  0.0094676   -0.0677892    0.0867244
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0471236   -0.0779638   -0.0162834
15-18 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0031797   -0.0458127    0.0394533
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0476446   -0.1820624    0.0867733
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0850686   -0.0144451    0.1845822
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0234781   -0.0817607    0.0348046
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0458407   -0.0873782   -0.0043032
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0159200   -0.0059893    0.0378293
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0052171   -0.0489107    0.0384764
15-18 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU                           0                    1                 -0.0111618   -0.1051312    0.0828077
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                  0.0100651   -0.0065442    0.0266745
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0166417   -0.0936942    0.0604108
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0204903   -0.1243618    0.0833812
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0079614   -0.0448600    0.0289371
18-21 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0181906   -0.0657239    0.0293427
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0025361   -0.1146237    0.1095516
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0342683   -0.0462377    0.1147743
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0082854   -0.0617594    0.0451887
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0358435   -0.0068309    0.0785178
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0020741   -0.0248914    0.0290396
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0169213   -0.0575705    0.0237280
18-21 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU                           0                    1                  0.0143906   -0.0430741    0.0718552
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0091732   -0.0645917    0.0829381
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0647629   -0.1298055    0.0002796
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0125784   -0.0290856    0.0542424
21-24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.0005281   -0.0448746    0.0459309
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0332081   -0.0881742    0.1545904
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0501537   -0.1684559    0.0681485
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0547083    0.0008594    0.1085572
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0335935   -0.0162456    0.0834325
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0183059   -0.0098044    0.0464162
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0903706    0.0122582    0.1684830
21-24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT       PERU                           0                    1                  0.0245092   -0.0717603    0.1207788


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0013143   -0.0080142    0.0053856
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0028394   -0.0114441    0.0057653
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0167847   -0.0483334    0.0147640
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0578773   -0.1141381   -0.0016166
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0004808   -0.0082535    0.0072920
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0237763   -0.1010179    0.1485705
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0063350   -0.0115355   -0.0011345
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0068457   -0.0119673   -0.0017241
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0041899   -0.0042436    0.0126233
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0132855   -0.0293661    0.0559371
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0252449   -0.0388891   -0.0116006
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.0092239   -0.0402675    0.0587153
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0042294   -0.0097216    0.0012629
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0005503   -0.0043581    0.0054586
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0095898   -0.0127245    0.0319041
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0017561   -0.0323876    0.0358998
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0003429   -0.0088218    0.0081361
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0812883   -0.0378559    0.2004326
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0015629   -0.0067248    0.0035990
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0021172   -0.0051878    0.0009535
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0014458   -0.0076926    0.0048010
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0264864   -0.0626295    0.0096567
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                -0.0009799   -0.0063455    0.0043857
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0027670   -0.0140015    0.0084675
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0214686   -0.0509371    0.0079999
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0021509   -0.0048453    0.0005435
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0000453   -0.0031341    0.0032248
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0100661   -0.0275218    0.0073897
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0137302   -0.0435211    0.0160607
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0038393   -0.0015834    0.0092621
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0653405   -0.0143970    0.1450780
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0034465   -0.0084353    0.0015423
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0014149   -0.0041530    0.0013232
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0040319   -0.0019855    0.0100493
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0017221   -0.0255267    0.0289708
6-9 months     ki1114097-CONTENT       PERU                           1                    NA                -0.0021123   -0.0070353    0.0028107
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0062025   -0.0266147    0.0142096
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0015304   -0.0016019    0.0046626
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0016836   -0.0057121    0.0023448
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0008659   -0.0209102    0.0226421
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0103197   -0.0409465    0.0203071
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0029982   -0.0014130    0.0074095
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0286753   -0.0872519    0.0299014
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0008982   -0.0049751    0.0031787
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0010459   -0.0032166    0.0011248
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0015257   -0.0040807    0.0071320
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0012566   -0.0305608    0.0280476
9-12 months    ki1114097-CONTENT       PERU                           1                    NA                -0.0009292   -0.0065549    0.0046965
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0044465   -0.0174624    0.0085693
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0047686   -0.0112183    0.0016811
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0029689   -0.0070985    0.0011607
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0074757   -0.0298677    0.0149163
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0103233   -0.0377332    0.0170867
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0008287   -0.0118690    0.0135263
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0706684   -0.1862744    0.0449376
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0011179   -0.0023223    0.0045582
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0005266   -0.0027443    0.0037974
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0069592   -0.0134442   -0.0004743
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0359401   -0.0703068   -0.0015734
12-15 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0011819   -0.0038583    0.0062222
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0075813   -0.0209093    0.0057466
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0006111   -0.0049108    0.0061329
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0007408   -0.0032710    0.0047526
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0237356   -0.0414060   -0.0060651
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0021504   -0.0354766    0.0311758
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0033412   -0.0139943    0.0073119
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0847607   -0.0097748    0.1792962
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0016759   -0.0079232    0.0045713
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0032919   -0.0066375    0.0000537
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0024716   -0.0039649    0.0089082
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0053065   -0.0421490    0.0315361
15-18 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0002735   -0.0054867    0.0060337
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.0103339   -0.0050877    0.0257555
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0010611   -0.0063291    0.0042068
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0001287   -0.0046605    0.0049179
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0070716   -0.0283437    0.0142006
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0136260   -0.0503421    0.0230900
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0004154   -0.0090287    0.0081979
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0322925   -0.0436820    0.1082670
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0006743   -0.0069421    0.0055934
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0027770   -0.0005992    0.0061532
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0012266   -0.0063026    0.0087557
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0147512   -0.0478914    0.0183890
18-21 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0007324   -0.0022154    0.0036802
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0027925   -0.0025639    0.0081489
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0037892   -0.0077901    0.0002117
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0041146   -0.0205814    0.0288106
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0012465   -0.0361799    0.0336869
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0018739   -0.0058698    0.0096176
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0475550   -0.1600192    0.0649092
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0012521   -0.0050728    0.0075770
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0021842   -0.0016110    0.0059795
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0083522   -0.0008849    0.0175893
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0701567    0.0056904    0.1346231
21-24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0032249   -0.0097204    0.0161702
