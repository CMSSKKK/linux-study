

# Ubuntu 설치하기 

* 환경 : 2020 M1 Mac, Monterey 12.1
* 가상머신 툴 : UTM
* 우분투 서버 버전 : Ubuntu-20.04.3 LTS

1. UTM download

2. Ubuntu-server-arm 설치

3. Ubuntu-desktop 설치

```zsh
$ sudo apt install tasksel
$ sudo tasksel install ubuntu-desktop
$ sudo reboot
```

![desktop 설치 완료](https://user-images.githubusercontent.com/81129309/148382106-ec75b878-75b6-4362-a88f-27d984d82cf7.png)

4. ssh 서버 설치 (다시 root 계정으로 전환 후)

```zsh
$ sudo apt-get install openssh-server
```

5. ip 확인

```zsh
$ ifconfig
```

6. 맥 터미널에서 접속

```zsh
$ ssh aaron@(ip)
```

![desktop 설치 완료](https://user-images.githubusercontent.com/81129309/148382141-f2d699ba-b762-48b5-9b0a-a813003465a6.png)

## 계정 생성 및 파일 권한 부여

1. 계정 생성

``` zsh
$ sudo adduser ron2
```

2. backup 폴더 생성

``` zsh
$ mkdir backup
```

3. 폴더 소유권 변경

```zsh
$ sudo chown ron2 backup
```

4. 계정 전환

```zsh
$ su ron2
```

5. backup 폴더 권한 변경

```zsh
$ chmod 764 backup
```

