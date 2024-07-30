# https://cf.10xgenomics.com/samples/spatial-exp/1.3.0/Visium_FFPE_Human_Prostate_Acinar_Cell_Carcinoma/Visium_FFPE_Human_Prostate_Acinar_Cell_Carcinoma_web_summary.html

data_path=~/workspace/projects/ContentShare/spatial_transcriptome/data
transcriptome=~/software_installed/spaceranger-1.3.1/genome/refdata-gex-GRCh38-2020-A

spaceranger count --id=PC1 \
                   --transcriptome=$transcriptome \
                   --probe-set=${data_path}/Prostate/Visium_FFPE_Human_Prostate_Acinar_Cell_Carcinoma_probe_set.csv \
                   --fastqs=${data_path}/Prostate/Visium_FFPE_Human_Prostate_Acinar_Cell_Carcinoma_fastqs \
                   --sample=Prostate \
                   --image=${data_path}/Prostate/Visium_FFPE_Human_Prostate_Acinar_Cell_Carcinoma_image.tif \
                   --slide=V11J26-002 \
                   --area=B1 \
                   --localcores=16 \
                   --localmem=128
