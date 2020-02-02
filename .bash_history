update-alternatives --set iptables /usr/sbin/iptables-legacy
update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
update-alternatives --set arptables /usr/sbin/arptables-legacy
update-alternatives --set ebtables /usr/sbin/ebtables-legacy
apt-get update && apt-get install -y apt-transport-https curl
apt-get update
apt-get install -y kubelet kubeadm kubectl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt-get update
apt-get install -y kubelet kubeadm kubectl
apt-mark hold kubelet kubeadm kubectl
docker ps
apt install docker.io
systemctl daemon-reload
systemctl restart kubelet
journalctl -fu kubelet
kubeadm init
kubeadm init --ignore-preflight-errors=NumCPU
docker ps
systemctl enable docker.service
history
k get no
alias k=kubectl
k get no
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
k get no -w
cat ~/.kube/config 
ls
cd /home/
ls
kubectl get no
ls
history
kubectl get po
kubectl get ns
helm fetch --untar
sudo snap install helm --classic
helm ls
kg po
alias kg='kubectl get --all-namespaces'
kg po
kubectl taint nodes --all node-role.kubernetes.io/master-
kg po
kg po -w
apt install htop
htop
ls
cd
ls
helm init --help
helm init --client-only
helm repo list
helm ls
ls
helm repo add hephy https://charts.teamhephy.com
helm search hephy
mkdir git
helm repo list
ls
cd git/
ls
git init --allow-empty -m'initial empty commit'
git init
git commit --allow-empty -m'initial empty commit'
git config --global user.email 'kingdon@teamhephy.com'
git config --global user.name 'Kingdon B'
git status
git commit --allow-empty -m'initial empty commit'
git status
git l
git log
git add -A
git status
ls
helm fetch --untar hephy/workflow
ls
git add -A
git status
git commit -vn
dpkg -r nano
apt install vim
ls
helm install hephy/workflow --namespace deis --set global.use_rbac=true,router.host_port.enabled=true
helm ls
ls
cd workflow/
ls
cd charts/
ls
ls *
egrep -ir extensions/v1beta1 *
egrep -ir extensions/v1beta1 *|awk -F: '{print $1}'
egrep -ir extensions/v1beta1 *|awk -F: '{print $1}'|xargs vim
vi *reset
reset
egrep -ir extensions/v1beta1 *|awk -F: '{print $1}'
egrep -ir clusterrole *
vi builder/templates/builder-clusterrole
vi builder/templates/builder-clusterrole.yaml 
vi builder/templates/_helpers.tmpl 
egrep -ir extensions/v1beta1 *|awk -F: '{print $1}'
egrep -ir extensions/v1beta1 *|awk -F: '{print $1}'|xargs echo
vi builder/templates/builder-deployment.yaml controller/templates/controller-ingress-rule-http-80.yaml controller/templates/controller-deployment.yaml database/templates/database-deployment.yaml fluentd/templates/logger-fluentd-daemon.yaml logger/templates/logger-deployment.yaml minio/templates/minio-deployment.yaml monitor/charts/grafana/templates/monitor-grafana-deployment.yaml monitor/charts/telegraf/templates/monitor-telegraf-daemon.yaml monitor/charts/influxdb/templates/monitor-influxdb-deployment.yaml nsqd/templates/nsqd-deployment.yaml redis/templates/logger-redis-deployment.yaml registry/templates/registry-deployment.yaml registry-proxy/templates/registry-proxy-daemon.yaml registry-token-refresher/templates/registry-token-refresher-deployment.yaml router/templates/router-deployment.yaml workflow-manager/templates/workflow-manager-deployment.yaml
egrep -ir extensions/v1beta1 *|awk -F: '{print $1}'|xargs echo
egrep -ir extensions *|awk -F: '{print $1}'|xargs echo
vi controller/templates/controller-clusterrole.yaml 
egrep -ir extensions *
git status
vi controller/templates/controller-clusterrole.yaml 
git status
git add -p
vi builder/templates/builder-deployment.yaml controller/templates/controller-ingress-rule-http-80.yaml controller/templates/controller-deployment.yaml database/templates/database-deployment.yaml fluentd/templates/logger-fluentd-daemon.yaml logger/templates/logger-deployment.yaml minio/templates/minio-deployment.yaml monitor/charts/grafana/templates/monitor-grafana-deployment.yaml monitor/charts/telegraf/templates/monitor-telegraf-daemon.yaml monitor/charts/influxdb/templates/monitor-influxdb-deployment.yaml nsqd/templates/nsqd-deployment.yaml redis/templates/logger-redis-deployment.yaml registry/templates/registry-deployment.yaml registry-proxy/templates/registry-proxy-daemon.yaml registry-token-refresher/templates/registry-token-refresher-deployment.yaml router/templates/router-deployment.yaml workflow-manager/templates/workflow-manager-deployment.yaml
helm install ../ --namespace deis --set global.use_rbac=true,router.host_port.enabled=true
cd ..
vi values.yaml 
helm install . --namespace deis --set global.use_rbac=true,router.host_port.enabled=true
helm ls
helm delete --purge fun-daschund
helm delete --purge fun-dacshund
helm delete --purge fun-dachshund
helm install . --namespace deis --set global.use_rbac=true,router.host_port.enabled=true
helm ls
k delete ns deis
alias k=kubectl
k delete ns deis
helm upgrade --install . --namespace deis --name hephy --set global.use_rbac=true,router.host_port.enabled=true
helm upgrade --install hephy . --namespace deis --set global.use_rbac=true,router.host_port.enabled=true
egrep -ir deis-monitor-telegraf *
vi charts/monitor/charts/telegraf/templates/monitor-telegraf-daemon.yaml
helm delete --purge hephy
k delete ns deis
vi charts/monitor/charts/telegraf/templates/monitor-telegraf-daemon.yaml
helm upgrade --install hephy . --namespace deis --set global.use_rbac=true,router.host_port.enabled=true
vi charts/monitor/charts/telegraf/templates/monitor-telegraf-daemon.yaml
helm upgrade --install hephy . --namespace deis --set global.use_rbac=true,router.host_port.enabled=true
helm delete --purge hephy
helm upgrade --install hephy . --namespace deis --set global.use_rbac=true,router.host_port.enabled=true
helm delete --purge hephy
k delete ns deis
helm upgrade --install hephy . --namespace deis --set global.use_rbac=true,router.host_port.enabled=true
helm delete --purge hephy
k delete ns deis
vi charts/monitor/charts/telegraf/templates/monitor-telegraf-daemon.yaml
git diff
egrep -r DaemonSet *
vi charts/registry-proxy/templates/registry-proxy-daemon.yaml charts/fluentd/templates/logger-fluentd-daemon.yaml charts/monitor/charts/telegraf/templates/monitor-telegraf-daemon.yaml 
git diff
git add -p
helm delete --purge hephy
k delete ns deis
helm upgrade --install hephy . --namespace deis --set global.use_rbac=true,router.host_port.enabled=true
k get no -w
alias kd='kubectl -n deis'
kd get po
kd get po -w
kd get ev
kd get po -w
kd get po
kd describe po deis-controller-786756bbcc-lfr95
kd edit deploy deis-controller
git l
kd get po
kd logs -f deis-router-665cfff5c4-f4cvn
kg cm
kd edit configmap slugrunner-config
ls 
ls charts/router/
ls charts/router/*
ls charts/router/*role*
ls charts/router/templates/*role*
vi charts/router/templates/*role*
git status
git diff
git diff --cached
git diff --cached > first_stab.diff
ls
cd git/
ls
cd workflow/
git l
vi ~/.gitconfig 
git l
ls
helm ls
ls
vi values.yaml 
git status
vi values.yaml 
helm upgrade --install hephy . --namespace deis --set controller.platform_domain=wkstest.xyz
egrep -ir ingre *
vi charts/controller/templates/controller-ingress-rule-http-80.yaml 
git log -u charts/controller/templates/controller-ingress-rule-http-80.yaml
vi charts/controller/templates/controller-ingress-rule-http-80.yaml
git commit -vn charts/controller/templates/controller-ingress-rule-http-80.yaml
helm delete --purge hephy
k delete ns deis
alias kd='kubectl -n deis'
alias k=kubectl
k delete ns deis
helm upgrade --install hephy . --namespace deis --set controller.platform_domain=wkstest.xyz
kg ing
alias kg='kubectl get --all-namespaces'
kg ing
kg svc
kg po
ls
git log -u
git diff -u
ls
cd git/
ls
cd workflow/
ls
cat values.yaml 
ls
ls ..
ls
ls cha
ls charts/
kd get po
alias kd='kubectl -n deis'
kd get po
helm delete --purge hephy
k delete ns deis
alias k=kubectl
k delete ns deis
kd get po
k get ns
ls
git status
git commit -vn
git format-patch -M -C -C -1 
vimdiff 0001-first-stab.patch first_stab.diff 
cd charts/controller/
git diff -u .
git l
git log
git log -u .
git status
git log -u
ls
cd git/
ls
cd workflow/
ls
pwd
git status
git diff
git commit -vn
git commit -vn values.yaml 
pwd
cd git
ls
helm ls
k get deploy -w
alias kd='kubectl -n deis'
kd get po -w
ls
kd get ing
helm install stable/nginx-ingress       --name ingress --namespace nginx-ingress       --set controller.hostNetwork=true,controller.daemonset.useHostPort=true,controller.kind=DaemonSet,controller.service.type=NodePort
k get no
alias k=kubectl
k get no
k get svc
kd get svc
vi workflow/charts/builder/templates/builder-service.yaml 
kubectl --namespace=deis delete service deis-builder
helm upgrade --install hephy --namespace deis workflow/
helm upgrade --install ingress stable/nginx-ingress   --namespace nginx-ingress   --set tcp.2222=deis/deis-builder:2222,controller.hostNetwork=true,controller.daemonset.useHostPort=true,controller.kind=DaemonSet,controller.service.type=NodePort\
helm upgrade --install ingress stable/nginx-ingress   --namespace nginx-ingress   --set tcp.2222=deis/deis-builder:2222,controller.hostNetwork=true,controller.daemonset.useHostPort=true,controller.kind=DaemonSet,controller.service.type=NodePort
ls
vi workflow/charts/controller/values.yaml 
helm upgrade --install hephy --namespace deis workflow/
kd get po -w
ls
cd workflow/
ls
cd ..
ls
cd workflow/
ls
cd charts/controller/
ls
git log -u .
free
uptime
k get all
kubectl get all
kubectl --all-namespaces get all
kubectl get --all-namespaces po
ls
cd git
ls
cd workflow/
ls
git status
ls -A
git remote
git diff
git remote add https://github.com/kingdonb/workflow-testing
git remote add origin https://github.com/kingdonb/workflow-testing
git l
git push origin master
ls
git l
git status
git add -p
git status
git commit -vn
git co -b testing
git push -u origin testing
git l
git branch -D master
git co master
git co -b first-stab-patch
git add 0001-first-stab.patch first_stab.diff 
git commit -vn
git push
git push -u origin first-stab-patch 
ls
ls -A
git status
cd ..
ls
ls -A
git status
cd ..
ls
find
ls snap/
pwd
cat .bash_history 
ls
cd git
ls
cp ../.bash_history ./
tail .bash_history 
cd git
cp ../.bash_history ./
tail .bash_history 
wc -l .bash_history
git co master
git add .bash_history 
git commit -vn
git push -u origin master 
kg po
kubectl version
kubectl get --all-namespaces ingress
kg po
alias kg='kubectl get --all-namespaces'
kg po
alias kd='kubectl -n deis'
kd logs -f slugbuild-go-1d382ccf-40516258
kd logs -f slugbuild-rocksolidapp-2a2d3050-cba6204c
ls
ls git
kg po
deis
kg ing
kg deploy
kd get po
kd logs -f slugbuild-rocksolidapp-2a2d3050-cba6204c
kd get po
kg po
kg ing
kd get po
