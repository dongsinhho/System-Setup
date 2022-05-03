# Triển khai hệ thống cho thuê xe đạp 

## 1. Install kuberctl
https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
## 2. Khởi tạo master 
```
$ kubeadm init --apiserver-advertise-address=$(hostname -i) --pod-network-cidr=192.168.0.0/16
```
## 3. Install network cho cluster
```
$ kubectl apply -f https://docs.projectcalico.org/v3.10/manifests/calico.yaml
```
## 4. Kiểm tra đã khởi tạo thành công chưa 
- Thông tin cluster
```
$ kubectl cluster-info
```
- Các node trong cluster
```
$ kubectl get nodes
```
- Các pod đang chạy trong tất cả các namespace
```
$ kubectl get pods -A
```
## 5. Tạo token để kết nối các worker vào trong cluster 
```
$ kubeadm token create --print-join-command
```


# Danh sách công việc
__Note__ : Tạo Vagrantfile để khởi tạo 3 máy ảo (optional) 

##### 1. Xây dựng Cluster gồm 3 máy ảo (cloud hoặc virtual local machine) - các bước như trên
- [ ] Viết mongo, mongo-express image, api image, push image lên docker hub
- [ ] Viết deployment.yaml service.yaml secret.yaml cho database và api server
- [x] Vagrantfile, setup network
- [x] Cài đặt Docker, Git, Kubernetes
- [ ] Triển khai code, vào cluster và deploy
##### 2. Xây dựng các station trên các Raspberry
- [x] Cài hệ điều hành, package, module, setup mạch
- [ ] Hoàn thành api và tương tác với mạch vật lý
- [x] Cài đặt docker, git
- [ ] Triển khai lên các thiết bị
##### 3. Kiểm tra thực nghiệm 3 tầng, tương tác giữa các thiết bị
- [ ] Chạy hệ thống cluster, edge, mobile để kiểm tra tính kết nối
##### 4. Triển khai hệ thống giám sát các node edge
- [ ] Triển khai server Prometheus và Grafana
- [ ] Triển khai các Exporter vào các raspberry để thu thập dữ liệu và gửi về server.
- [ ] Tạo luồng cảnh báo


**NOTE 
- Lay env tu kubernetes 
- Persitent volume cho mongodb