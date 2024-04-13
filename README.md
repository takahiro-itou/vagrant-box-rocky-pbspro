# vagrant-box-rocky-pbspro

PBS Pro をインストールした Rocky Linux 8.9

## ボックスを自前で作成する

### クローン

```bash
git clone https://gitlab.com/takahiro-itou/vagrant-box-rocky-pbspro.git
cd  vagrant-box-rocky-pbspro
```

### ボックス作成

```bash
./setup.sh
```

### 作成したボックスを登録する。

```bash
vagrant box add  --name <yourname>/rocky8-pbspro  rocky8-pbspro.v0.0.0.box
```

## 作成済みのボックスをダウンロードして使う

takahiro-itou/rocky8-pbspro
- https://app.vagrantup.com/takahiro-itou/boxes/rocky8-pbspro

