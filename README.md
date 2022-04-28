# sagemaker-mnist-sample

SageMakerでmnistモデルを訓練し、エンドポイントとしてデプロイし、推論のサンプルを示すプロジェクト。

# ファイル説明

```
.
├── data
│   └── mnist.pickle : mnistの訓練およびテストデータ。
		       mnist_cnn.pyから生成される。
├── deployer.ipynb : h5形式のモデルをSavedModelへ変換し、SageMakerのエンドポイントへデプロイするスクリプト。
├── mnist_cnn.ipynb : SageMakerを介してモデルの訓練スクリプトを叩くスクリプト。
├── mnist_cnn.py : モデル定義および訓練スクリプト。
├── model.h5 : h5形式のモデル。
	       mnist_cnn.ipynbから生成される。
├── model.tar.gz : SageMakerにデプロイするためにセットアップしたモデルディレクトリを圧縮したファイル。
		   tf_model/codeおよび、tf_model/mnistを含む。
		   deployer.ipynbから生成される。
├── output.tar.gz : 訓練済みモデル。mnist_cnn.pyから生成される。
├── README.md : このファイル
└── tf_model : SageMakerにデプロイするためにセットアップしたモデルディレクトリ
    ├── code
    │   └── inference.py
    ├── mnist
    │   └── 1
    │       ├── saved_model.pb
    │       └── variables
    │           ├── variables.data-00000-of-00001
    │           └── variables.index
    └── model.tar.gz
```

# 参考

＊[KerasのMNIST CNNでSageMakerの基本を理解する - Qiita](https://qiita.com/maeda_mikio/items/beefac54c788a7f23218)
* [バージョンに注意！Amazon SageMakerでのモデルデプロイと推論 | MISO](https://www.tdi.co.jp/miso/amazon-sagemaker-deploy)
