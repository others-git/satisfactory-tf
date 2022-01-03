[Unit]
Description=Satisfactory dedicated server
Wants=network-online.target
After=syslog.target network.target nss-lookup.target network-online.target

[Service]
Environment="LD_LIBRARY_PATH=./linux64"
ExecStartPre=/usr/games/steamcmd +force_install_dir "/home/ubuntu/SatisfactoryDedicatedServer" +login anonymous +app_update 1690800 validate +quit
ExecStart=/home/ubuntu/SatisfactoryDedicatedServer/FactoryServer.sh
User=ubuntu
Group=ubuntu
StandardOutput=journal
Restart=on-failure
WorkingDirectory=/home/ubuntu/SatisfactoryDedicatedServer

[Install]
WantedBy=multi-user.target
