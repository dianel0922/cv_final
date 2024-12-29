wget http://cseweb.ucsd.edu/~viscomp/projects/LF/papers/ECCV20/nerf/tiny_nerf_data.npz
mkdir -p data
cd data
wget http://cseweb.ucsd.edu/~viscomp/projects/LF/papers/ECCV20/nerf/nerf_example_data.zip
unzip nerf_example_data.zip
cd ..

if command -v kaggle &> /dev/null; then
    echo "Kaggle CLI 已安裝，開始下載資料集..."

    # 下載指定的 Kaggle 資料集
    DATASET="alexlwh/nerf-synthetic"
    OUTPUT_DIR="./data"

    echo "正在從 Kaggle 下載資料集 $DATASET ..."
    kaggle datasets download -d "$DATASET" -p "$OUTPUT_DIR"
    
    # 解壓縮下載的 zip 文件
    ZIP_FILE="$OUTPUT_DIR/nerf-synthetic.zip"
    
    if [ -f "$ZIP_FILE" ]; then
        echo "正在解壓縮下載的資料集..."
        unzip "$ZIP_FILE" -d "$OUTPUT_DIR"
        echo "資料集下載並解壓縮完成，文件位於: $OUTPUT_DIR"
    else
        echo "未找到下載的 zip 文件 $ZIP_FILE"
    fi

else
    echo "未找到 Kaggle CLI。請確保已安裝並配置 Kaggle API 金鑰。"
fi

