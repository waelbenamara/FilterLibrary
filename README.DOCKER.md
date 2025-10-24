# Docker Setup

## Install Podman on RHEL
```bash
sudo yum install -y podman
```

Note: RHEL uses podman instead of docker. Commands work the same.

## Build and Run

Build the image:
```bash
docker build -t infinifilter .
```

Run experiments (default: 2^31 slots):
```bash
docker run -v $(pwd):/app:Z infinifilter -c "chmod +x run_exps.sh && ./run_exps.sh 31"
```

Run with custom size (e.g., 2^24 slots):
```bash
docker run -v $(pwd):/app:Z infinifilter -c "chmod +x run_exps.sh && ./run_exps.sh 24"
```

## Get Results

Results are saved in the current directory:
- figure13.png
- figure14.png
- figure15.png
- figure16.png
- exp1/ through exp6/ directories

