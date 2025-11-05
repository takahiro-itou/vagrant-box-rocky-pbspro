# vagrant-box-rocky-pbspro

PBS Pro をインストールした Rocky Linux 9.3

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
vagrant box add  --name <yourname>/rocky9-pbspro-23.06.06  rocky9-pbspro-23.06.06.v23.0.0.box
```

## 作成済みのボックスをダウンロードして使う

takahiro-itou/rocky9-pbspro-23.06.06
- https://app.vagrantup.com/takahiro-itou/boxes/rocky8-pbspro
