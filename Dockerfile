FROM 	nvidia/cuda:8.0-devel-ubuntu16.04 
COPY	start.sh /tmp/
COPY	config.txt /tmp/
#RUN	adduser -S -D -H -h /xmr-stak/build/bin miner

#RUN	chown miner /tmp/config.txt
RUN 	apt-get update && \
	apt --yes install  libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git
RUN	git clone https://github.com/fireice-uk/xmr-stak.git
RUN	mkdir /xmr-stak/build
RUN	cat xmr-stak/xmrstak/donate-level.hpp | sed 's/fDevDonationLevel = 2.0/fDevDonationLevel = 0.0/' > tmpfile && \
	cat tmpfile > xmr-stak/xmrstak/donate-level.hpp && \
	rm tmpfile
RUN	cd xmr-stak/build/ && \
	cmake -DOpenCL_ENABLE=OFF .. && \
	make install
WORKDIR /tmp 
ENTRYPOINT  ["./start.sh"]
