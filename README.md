# Cyberleek Self-Hosted Mirror

A plug-and-play, lightweight Docker container (built on Nginx Alpine) serving a static mirror of the Cyberleek archive. 
Fully self-hostable, this allows you to bypass rate limits or domain outages by backing the frontend with your own Solana RPC nodes. 

## 🚀 Usage

Deploy using Docker Compose. The image already contains all necessary static files. Just define your preferred RPC nodes in the environment variables:

```yaml
services:
  cyberleek:
    image: ghcr.io/kw6423/cyberleek-selfhost:latest
    ports:
      - 7942:80
    environment:
      # Replace the public nodes below with your private endpoints if desired
      - RPC_NODES=["https://api.mainnet-beta.solana.com", "https://solana.api.onfinality.io/public", "https://public.rpc.solanavibestation.com", "https://solana.api.pocket.network", "https://solana-rpc.publicnode.com", "https://solana-mainnet.gateway.tatum.io"]
    restart: unless-stopped
```

## ⚖️ Disclaimer

* **No Affiliation**: This repository and its maintainer(s) are not affiliated, associated, authorized, endorsed by, or in any way officially connected with Rockstar Games, Take-Two Interactive, Cyberleek, or any of their subsidiaries or affiliates.
* **Educational & Mirror Purposes Only**: This project is an independent open-source mirror tool provided solely for decentralization, self-hosting experimentation, and archival purposes.
* **Content Responsibility**: The maintainer of this repository does not host, stream, generate, or claim ownership of any third-party media, leaked content, or intellectual property. All product names, logos, brands, and media mentioned or displayed belong to their respective copyright holders.
* **Use at Your Own Risk**: Software is provided "as is", without warranty of any kind. You are solely responsible for ensuring compliance with your local laws and host provider terms of service.