## Kubernetesの特徴

- 宣言的なconfigを使って、あるべき状態を定義
- そこに収束するような動き
- 拡張性

## コントロールプレーン

- schedule：Podをどこに配置するか決める
- Add on：拡張機能

## EKSでできること

- KubernetesコントロールプレーンをAWS側で管理

## EKS Best Practices

- https://aws.github.io/aws-eks-best-practices/reliability/docs/controlplane/

## EKSの利点

- スケジューリングはEventBridgeと組み合わせる・ログはサイドカーで立てる みたいに、他マネージドサービスと組み合わせることが前提になるが、KubernetesだとKubernetesのOS内で自在に拡張できる などの利点がある
- つまり、EKSの方が、自分達の要件に合わせて拡張など実施しやすい。その代わり、それらをメンテナンスする手間も発生するので、その点とのトレードオフを考慮することが必要

## KubernetesにおけるIaCの考え方

- kubernetesの世界から、AWSのAPIを叩いて、AWSリソースを作成することは可能
- その上で、どの範囲までIaCで管理するかどうかはチーム編成による
- Kubernetesのマニフェストファイルは、アプリケーションエンジニアが触る可能性が高いので、アプリケーションエンジニアが触ったらまずい部分は、Kubernetesの外の世界(terraformなど)で管理するとか
- ターゲットバインディング

## Volumeの永続化について

- PV：Kubernetes世界のVolume。
- CSI Driver：EFSとか、外部リソースが使える。EFSだったらネットワークのオーバヘッドを考慮する必要がある。

## Kubernetes資格練習コマンド用のリンク

- https://github.com/dgkanatsios/CKAD-exercises/blob/main/a.core_concepts.md


## kubectl コマンド

- kubectl run：Podを実行する
