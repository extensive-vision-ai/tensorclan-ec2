# Tensorclan - EC2 deployment

## Deploy on EC2

modify `tensorclan` with the corrent `server_name` which can be your EC2 public IP

make sure to run the below scripts in `/home/ubuntu`

```bash
sudo sh setup.sh
sudo sh run_nginx.sh
```

## Local Run Instructions

Follow the below instructions to run locally before pushing to EC2

### Setup Env

```bash
$ sudo apt install pip3
$ sudo apt install gunicorn libsndfile1 libasound2-dev libsndfile-dev nginx-light
```

### Build and Run

```bash
$ cd web && npm install && npm run build
$ cd backend && flask run --host=0.0.0.0
```
